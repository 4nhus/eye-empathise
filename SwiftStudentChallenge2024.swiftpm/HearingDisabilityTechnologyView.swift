//
//  HearingDisabilityTechnologyView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct HearingDisabilityTechnologyView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Technologies for Hearing Disabilities")
                    .font(.title)
                    .padding(.bottom)
                
                Text("Live Listen: Helps you hear a conversation in a noisy area or even hear someone speaking across the room by using your device as a microphone that sends sound to your Made for iPhone hearing aid.")
                
                Text("Closed Captions and SDH: Support for closed captions and subtitles for the deaf and hard of hearing on video content.")
                
                Text("Visual Alerts: Use LED flash and on-screen notifications to alert users to incoming calls, messages, and notifications.")
                
                Text("FaceTime: Provides high-quality video calling that can be used for sign language communication.")
            }
            .padding()
        }
        .navigationTitle("Hearing Accessibility Tech")
    }
}


#Preview {
    HearingDisabilityTechnologyView()
}
