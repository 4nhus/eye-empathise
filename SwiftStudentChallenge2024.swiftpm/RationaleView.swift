//
//  RationaleView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 25/2/2024.
//

import SwiftUI

struct RationaleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Why is it important to be aware?")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("Being mindful of those with visual impairments is key to creating an inclusive world")
                .padding(.bottom)
            Text("• Over 285 million people worldwide affected by visual impairments")
            
            Text("• Around 39 million people are blind, and 246 million have low vision.")
            Text("• About 90% of visually impaired people live in low- and middle-income countries.")
                .padding(.bottom)
            
            Text("By raising awareness, we foster empathy and innovation, leading to accessible designs that improve life for millions.")
                .padding(.bottom)
            // Fix alignment
            NavigationLink("Next") {
                
            }
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
        }
        
    }
}

#Preview {
    RationaleView()
}
