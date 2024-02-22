//
//  DesignPrinciplesHearingView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct DesignPrinciplesHearingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Design Principles for Hearing Disabilities")
                .font(.title)
                .padding(.bottom)
            
            Text("Provide subtitles or captions for video content, ensuring they accurately represent spoken words and sound effects.")
            
            Text("Offer transcripts for audio content to make the information accessible to those who are deaf or hard of hearing.")
            
            Text("Use visual cues and indicators, such as flashing lights for alerts, to provide information without relying solely on sound.")
            
            Text("Ensure that all information conveyed through audio is also available in a visual format.")
        }
        .padding()
        .navigationTitle("Hearing Design Principles")
    }
}


#Preview {
    DesignPrinciplesHearingView()
}
