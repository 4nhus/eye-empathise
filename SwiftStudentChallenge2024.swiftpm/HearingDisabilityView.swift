//
//  HearingDisabilityView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct HearingDisabilityView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Hearing Disabilities")
                    .font(.title)
                    .padding(.bottom)
                
                Text("Hearing disabilities can hinder communication, social interaction, and access to auditory information in the environment...")
                
                Text("Common Specific Disabilities:")
                    .fontWeight(.semibold)
                Text("Deafness, Hearing Impairment, Auditory Processing Disorder...")
                
                Text("Statistics:")
                Text("Over 5% of the world's population – or 430 million people – require rehabilitation to address their 'disabling' hearing loss...")
                
                // Add NavigationLink to Apple accessiblity to MobilityDisabilityView
            }
            .padding()
        }
        .navigationTitle("Hearing Disabilities")
    }
}

#Preview {
    HearingDisabilityView()
}
