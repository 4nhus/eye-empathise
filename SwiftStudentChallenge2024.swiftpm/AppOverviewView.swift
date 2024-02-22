//
//  AppOverviewView.swift
//  Test
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct AppOverviewView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome to Accessibility Quest!")
                .font(.title)
                .padding()
            Text("Dive into a world where every challenge is an opportunity to explore Apple's accessibility features through engaging gameplay. But that's not all – our game also introduces you to the principles of accessible design, empowering you to create more inclusive digital environments. Whether you're familiar with accessibility features or exploring them for the first time, Accessibility Quest offers a fun, interactive way to learn, play, and grow. Come on a journey to make the digital world accessible to everyone!")
                .padding()
        }
        .navigationTitle("App Overview")
    }
}

#Preview {
    AppOverviewView()
}
