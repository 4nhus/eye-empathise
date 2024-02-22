//
//  MobilityDisabilityView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct MobilityDisabilityView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Mobility Disabilities")
                .font(.title)
                .padding(.bottom)
            
            Text("Mobility disabilities affect a person's ability to move or perform physical tasks, impacting independence and access to physical spaces...")
            
            Text("Common Specific Disabilities:")
                .fontWeight(.semibold)
            Text("Cerebral Palsy, Spinal Cord Injury, Arthritis...")
            
            Text("Statistics:")
            Text("An estimated 15% of the global population lives with some form of disability, with approximately 2-4% experiencing significant difficulties in functioning...")
            
            // Add NavigationLink to Apple accessiblity to MobilityDisabilityView
            
                .padding()
        }
        .navigationTitle("Mobility Disabilities")
    }
}

#Preview {
    MobilityDisabilityView()
}
