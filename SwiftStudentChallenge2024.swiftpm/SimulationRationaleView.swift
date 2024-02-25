//
//  SimulationRationaleView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 25/2/2024.
//

import SwiftUI

struct SimulationRationaleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Why visual simulation matters")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("Visual disabilities vary widely, impacting individuals in unique ways. Reading about these conditions can provide knowledge, but experiencing them—even virtually—offers profound insights that words alone cannot convey.")
                .padding(.bottom)

            Text("By seeing the world through the lens of different visual impairments, you're not just learning about the challenges; you're experiencing a fraction of what many navigate daily. This immersive insight fosters empathy, transforming abstract concepts into tangible realities.")
                .padding(.bottom)
           
            Text("By participating in these simulations, you're taking a significant step towards understanding and empathy. Let's use this knowledge to advocate for accessible environments and inclusive experiences for everyone.").padding(.bottom)
            
            Text("If you're experiencing visual diffficulteis or feel uncofmrotable while using the simulation, it';s perfectly fine to step away. You may also skip it completely.")
                .padding(.bottom)
            // Fix alignment
            HStack {
                NavigationLink("Skip simulation") {
                    VisualDisabilitySimulationView()
                }
                .buttonStyle(.bordered)
                NavigationLink("Let's try") {
                    VisualDisabilitySimulationView()
                }
                .buttonStyle(.borderedProminent)
            }
            .buttonBorderShape(.capsule)
        }
    }
}

#Preview {
    SimulationRationaleView()
}
