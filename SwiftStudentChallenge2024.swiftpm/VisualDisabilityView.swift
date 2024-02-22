//
//  VisualDisabilityView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct VisualDisabilityView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Visual Disabilities")
                .font(.title)
                .padding(.bottom)
            
            Text("Visual disabilities can significantly affect an individual's ability to perform daily tasks, access information, and navigate environments...")
            
            Text("Common Specific Disabilities:")
                .fontWeight(.semibold)
            Text("Blindness, Low Vision, Color Blindness...")
            
            Text("Statistics:")
            Text("Approximately 285 million people are visually impaired worldwide...")
            
            // Add NavigationLink to Apple accessiblity to VisualDisabilityTechnologyView
        }
        .padding()
        .navigationTitle("Visual Disabilities")
    }
}

#Preview {
    VisualDisabilityView()
}
