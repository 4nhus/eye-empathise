//
//  DesignPrinciplesVisualView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct DesignPrinciplesVisualView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Design Principles for Visual Disabilities")
                .font(.title)
                .padding(.bottom)
            
            Text("Use sufficient contrast between text and background to ensure legibility.")
            
            Text("Provide text alternatives for non-text content to make it accessible through screen readers.")
            
            Text("Ensure interactive elements are large enough to interact with, and provide clear feedback.")
            
            Text("Design content with a logical structure and use headings to facilitate screen reader navigation.")
            
            Text("Avoid relying solely on color to convey information; use patterns or text labels as well.")
        }
        .padding()
        .navigationTitle("Visual Design Principles")
    }
}


#Preview {
    DesignPrinciplesVisualView()
}
