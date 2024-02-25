//
//  ConsentView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 25/2/2024.
//

import SwiftUI

struct ConsentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Putting your comfort first")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("If you're experiencing visual diffficulteis or feel uncofmrotable while using the app, it';s perfectly fine to step away")
                .padding(.bottom)
            Text("You can exit teh app wheenveer you need to. Your comfort and safety come first")
                .padding(.bottom)
            // Fix alignment
            HStack {
                NavigationLink("Quit") {
                    
                }
                
                .buttonStyle(.bordered)
                NavigationLink("Let's play!") {
                }
                .buttonStyle(.borderedProminent)
            }
            .buttonBorderShape(.capsule)
        }
    }
}

#Preview {
    ConsentView()
}
