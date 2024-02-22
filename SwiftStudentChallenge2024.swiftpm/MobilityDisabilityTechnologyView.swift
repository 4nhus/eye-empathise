//
//  MobilityDisabilityTechnologyView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct MobilityDisabilityTechnologyView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Technologies for Mobility Disabilities")
                .font(.title)
                .padding(.bottom)
            
            Text("Voice Control: Allows users to control their device entirely through voice commands.")
            
            Text("Switch Control: Lets you interact with your device using one or more switches instead of the touchscreen.")
            
            Text("AssistiveTouch: Customizes how you navigate your device with gestures, touches, and actions.")
            
            Text("Siri: Enables hands-free operation and assistance for a wide range of tasks, from sending messages to opening apps.")
        }
        .padding()
        .navigationTitle("Mobility Accessibility Tech")
    }
}

#Preview {
    MobilityDisabilityTechnologyView()
}
