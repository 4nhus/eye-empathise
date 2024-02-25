//
//  AppOverviewView.swift
//  Test
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct AppOverviewView: View {
    var body: some View {
        ZStack {
            AppDetails.accentSecondary
                .ignoresSafeArea()
            VStack(alignment: .center) {
                (Text("Eye ") + Text("Engage").bold())
                    .font(.largeTitle)
                Text("Experience simulators and mini games to better understand visual impairment")
                NavigationLink("Lets play!") {
                    InstructionView()
                }
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    AppOverviewView()
}
