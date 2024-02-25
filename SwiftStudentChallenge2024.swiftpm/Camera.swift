//
//  Camera.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 24/2/2024.
//

import AVFoundation
import CoreImage
import UIKit

class Camera: NSObject {
    private let captureSession = AVCaptureSession()
    private var isCaptureSessionConfigured = false
    private var deviceInput: AVCaptureDeviceInput?
    private var videoOutput: AVCaptureVideoDataOutput?
    private var sessionQueue: DispatchQueue!
    private var captureDevice: AVCaptureDevice?
    
    var isRunning: Bool {
        captureSession.isRunning
    }
    
    private var addToPreviewStream: ((CIImage) -> Void)?
    
    var isPreviewPaused = false
    
    lazy var previewStream: AsyncStream<CIImage> = {
        AsyncStream { continuation in
            addToPreviewStream = { ciImage in
                if !self.isPreviewPaused {
                    continuation.yield(ciImage)
                }
            }
        }
    }()
    
    override init() {
        super.init()
        initialize()
    }
    
    private func initialize() {
        sessionQueue = DispatchQueue(label: "session queue")
        
        captureDevice = AVCaptureDevice.default(for: .video)
    }
    
    private func configureCaptureSession(completionHandler: (_ success: Bool) -> Void) {
        var success = false
        
        self.captureSession.beginConfiguration()
        
        defer {
            self.captureSession.commitConfiguration()
            completionHandler(success)
        }
        
        guard let captureDevice = captureDevice,
              let deviceInput = try? AVCaptureDeviceInput(device: captureDevice)
        else {
            return
        }
        
        captureSession.sessionPreset = AVCaptureSession.Preset.photo
        
        let videoOutput = AVCaptureVideoDataOutput()
        videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "VideoDataOutputQueue"))
        
        captureSession.addInput(deviceInput)
        captureSession.addOutput(videoOutput)
        
        self.deviceInput = deviceInput
        self.videoOutput = videoOutput
        
        if let videoOutputConnection = videoOutput.connection(with: .video) {
            if videoOutputConnection.isVideoMirroringSupported {
                videoOutputConnection.isVideoMirrored = captureDevice.position == .front
            }
        }
        
        isCaptureSessionConfigured = true
        
        success = true
    }
    
    // Change UI to respond to no camera authorization
    private func checkAuthorization() async -> Bool {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            return true
        case .notDetermined:
            sessionQueue.suspend()
            let status = await AVCaptureDevice.requestAccess(for: .video)
            sessionQueue.resume()
            return status
        case .denied:
            return false
        case .restricted:
            return false
        @unknown default:
            return false
        }
    }
    
    private func deviceInputFor(device: AVCaptureDevice?) -> AVCaptureDeviceInput? {
        guard let validDevice = device else { return nil }
        return try? AVCaptureDeviceInput(device: validDevice)
        
    }
    
    func start() async {
        let authorized = await checkAuthorization()
        guard authorized else {
            return
        }
        
        if isCaptureSessionConfigured {
            if !captureSession.isRunning {
                sessionQueue.async { [self] in
                    self.captureSession.startRunning()
                }
            }
            return
        }
        
        sessionQueue.async { [self] in
            self.configureCaptureSession { success in
                guard success else { return }
                self.captureSession.startRunning()
            }
        }
    }
    
    func stop() {
        guard isCaptureSessionConfigured else { return }
        
        if captureSession.isRunning {
            sessionQueue.async {
                self.captureSession.stopRunning()
            }
        }
    }
    
    
    private var videoOrientation: AVCaptureVideoOrientation? {
        switch UIDevice.current.orientation {
        case .portrait: return AVCaptureVideoOrientation.portrait
        case .portraitUpsideDown: return AVCaptureVideoOrientation.portraitUpsideDown
        case .landscapeLeft: return AVCaptureVideoOrientation.landscapeRight
        case .landscapeRight: return AVCaptureVideoOrientation.landscapeLeft
        default: return nil
        }
    }
}

extension Camera: AVCaptureVideoDataOutputSampleBufferDelegate {
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        guard let pixelBuffer = sampleBuffer.imageBuffer else { return }
        
        if connection.isVideoOrientationSupported && videoOrientation != nil {
            connection.videoOrientation = self.videoOrientation!
        }
        
        addToPreviewStream?(CIImage(cvPixelBuffer: pixelBuffer))
    }
}

