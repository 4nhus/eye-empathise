//
//  CameraView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 24/2/2024.
//

import Foundation
import SwiftUI
import AVFoundation

struct CameraView: View {
    @StateObject private var model = CameraProcessor()
    @Binding var currentDisability: VisualDisabilityFilter
    
    
    var body: some View {
        // Need to fix ViewFinder proportions
        ViewfinderView(image:  $model.viewfinderImage )
            .accessibilityElement()
            .accessibilityLabel("View Finder")
            .accessibilityAddTraits([.isImage])
            .task {
                await model.camera.start()
            }
            .navigationTitle("Camera")
            .onChange(of: currentDisability) { disability in
                model.currentFilterType = disability
            }
            .onDisappear {
                model.camera.stop()
            }
    }
}
