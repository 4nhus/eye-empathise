//
//  UnderstandingDisabilityView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct UnderstandingDisabilityView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Understanding Disability")
                .font(.title)
                .padding()
            Text("Disability is a diverse and multifaceted condition that affects individuals in various ways, impacting their ability to engage in daily activities, communication, and interaction with the world around them. Disabilities can be present from birth or acquired due to illness or injury. This app aims to promote empathy and inclusivity by shedding light on the different experiences of those living with disabilities.")
                .padding()
            NavigationLink("Visual Disabilities", destination: VisualDisabilityView())
            NavigationLink("Hearing Disabilities", destination: HearingDisabilityView())
            NavigationLink("Mobility Disabilities", destination: MobilityDisabilityView())
        }
        .navigationTitle("Disabilities")
    }
}

#Preview {
    UnderstandingDisabilityView()
}
