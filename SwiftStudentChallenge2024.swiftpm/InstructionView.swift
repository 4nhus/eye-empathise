//
//  Instruction.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 25/2/2024.
//

import SwiftUI

struct InstructionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("How to play")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            Text("You will be taken through a series of experiences to trial what it is like ot experience visulal impairment")
                .bold()
                .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Try simulation mode")
                    .bold()
                    .foregroundStyle(AppDetails.accentPrimary)
                Text("Step into real-life stuations desigend to shwo you what it's like having different visual ipairments")
                Text("Have fun with mini-games")
                    .bold()
                    .foregroundStyle(AppDetails.accentPrimary)
                Text("Test how well you cna adapt by plaging games that minor everydady challenges")
            }
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(AppDetails.accentSecondary, lineWidth: 2)
            )
            .padding(.bottom)
            Text("But most importantly... have fun!")
            // Fix alignment
            NavigationLink("Next") {
                
            }
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    InstructionView()
}
