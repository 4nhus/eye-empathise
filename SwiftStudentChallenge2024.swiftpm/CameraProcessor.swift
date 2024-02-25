//
//  CameraProcessor.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 24/2/2024.
//

import AVFoundation
import SwiftUI

final class CameraProcessor: ObservableObject {
    let camera = Camera()
    let ciContext = CIContext()
    let protanopiaFilter: CIFilter
    let deuteranopiaFilter: CIFilter
    let tritanopiaFilter: CIFilter
    let achromatopsiaFilter: CIFilter
    let lowVisionFilter: CIFilter
    var currentFilterType: VisualDisabilityFilter = .none
    
    @Published var viewfinderImage: Image?
    
    var currentFilter: CIFilter {
        switch currentFilterType {
        case .protanopia: return protanopiaFilter
        case .deuteranopia: return deuteranopiaFilter
        case .tritanopia: return tritanopiaFilter
        case .achromatopsia: return achromatopsiaFilter
        default: return lowVisionFilter
        }
    }
    
    init() {
        protanopiaFilter = CIFilter(name: "CIColorMatrix")!
        protanopiaFilter.setValue(CIVector(x: 0.625, y: 0.375, z: 0, w: 0), forKey: "inputRVector")
        protanopiaFilter.setValue(CIVector(x: 0.7, y: 0.3, z: 0, w: 0), forKey: "inputGVector")
        protanopiaFilter.setValue(CIVector(x: 0, y: 0, z: 1, w: 0), forKey: "inputBVector")
        
        deuteranopiaFilter = CIFilter(name: "CIColorMatrix")!
        deuteranopiaFilter.setValue(CIVector(x: 0.56667, y: 0.43333, z: 0, w: 0), forKey: "inputRVector")
        deuteranopiaFilter.setValue(CIVector(x: 0.55833, y: 0.44167, z: 0, w: 0), forKey: "inputGVector")
        deuteranopiaFilter.setValue(CIVector(x: 0, y: 0.24167, z: 0.75833, w: 0), forKey: "inputBVector")
        
        tritanopiaFilter = CIFilter(name: "CIColorMatrix")!
        tritanopiaFilter.setValue(CIVector(x: 0.95, y: 0.05, z: 0, w: 0), forKey: "inputRVector")
        tritanopiaFilter.setValue(CIVector(x: 0, y: 0.433, z: 0.567, w: 0), forKey: "inputGVector")
        tritanopiaFilter.setValue(CIVector(x: 0, y: 0.475, z: 0.525, w: 0), forKey: "inputBVector")
        
        achromatopsiaFilter = CIFilter(name: "CIColorControls")!
        achromatopsiaFilter.setValue(0, forKey: kCIInputSaturationKey)
        
        // Fix the image shrinking with blur
        lowVisionFilter = CIFilter(name: "CIGaussianBlur")!
        lowVisionFilter.setValue(10.0, forKey: kCIInputRadiusKey)

        Task {
            await handleCameraPreview()
        }
    }
    
    func applyFilter(to inputImage: CIImage) -> CIImage {
        currentFilter.setValue(inputImage, forKey: kCIInputImageKey)
        return currentFilter.outputImage!
    }
    
    func handleCameraPreview() async {
        let imageStream = camera.previewStream
            .map { self.currentFilterType == .none ? $0.image(ciContext: self.ciContext) : self.applyFilter(to: $0).image(ciContext: self.ciContext) }
        
        for await image in imageStream {
            Task { @MainActor in
                viewfinderImage = image
            }
        }
    }
}

fileprivate extension CIImage {
    func image(ciContext: CIContext) -> Image? {
        guard let cgImage = ciContext.createCGImage(self, from: self.extent) else { return nil }
        return Image(decorative: cgImage, scale: 1, orientation: .up)
    }
}

