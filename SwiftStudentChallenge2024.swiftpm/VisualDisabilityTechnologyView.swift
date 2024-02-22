//
//  VisualDisabilityTechnologyView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct VisualDisabilityTechnologyView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Technologies for Visual Disabilities")
                .font(.title)
                .padding(.bottom)
            
            Text("VoiceOver: A screen reader that tells you what's happening on your screen, and lets you navigate using gestures or a keyboard.")
            
            Text("Magnifier: Uses your device's camera to magnify text or objects, making them easier to see.")
            
            Text("Dynamic Type: Allows users to adjust the text size in apps for better readability.")
            
            Text("Display Accommodations: Includes settings like Invert Colors, Color Filters, and Reduce White Point to improve screen visibility.")
        }
        .padding()
        .navigationTitle("Visual Accessibility Tech")
    }
}


#Preview {
    VisualDisabilityTechnologyView()
}
