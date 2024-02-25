//
//  VisualDisabilitySimulationView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct VisualDisabilitySimulationView: View {
    @State private var currentDisability: VisualDisabilityFilter = .none
    

    var body: some View {
        Picker("Disability to simulate", selection: $currentDisability) {
            ForEach(VisualDisabilityFilter.allCases) { disability in
                Text(disability.rawValue).tag(disability)
            }
        }
        .pickerStyle(.segmented)
        VStack {
            CameraView(currentDisability: $currentDisability)
        }
    }
}


#Preview {
    VisualDisabilitySimulationView()
}
