//
//  ColourBlindnessView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 25/2/2024.
//

import SwiftUI

struct ColourBlindnessView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Did you know that colour blindness can affect reading and legibility?")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("Contrast Issues: ").bold() + Text("Hard to read text with poor colour contrast.")
            Text("Color Codes:").bold() + Text("Trouble distinguishing colour-coded information")
            Text("Educational Materials: ").bold() + Text(" Affects learning with colour-used educational materials")
            Text("Digital accessibility: ").bold() + Text(" Websites that rely on colour distinctions for navigation cues, links, or interactive elements can pose navigational challenges")
            (Text("Signs: ").bold() + Text(" Visual cues based on colour (such as traffic lights in written exams or instructions) can lead to misunderstandings or misinterpretation")).padding(.bottom)
            // Fix alignment
            NavigationLink("Let's try") {
                VisualDisabilitySimulationView()
            }
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    ColourBlindnessView()
}
