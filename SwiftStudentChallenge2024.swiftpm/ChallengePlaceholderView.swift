//
//  ChallengePlaceholderView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct ChallengePlaceholderView: View {
    var challengeName = "Placeholder"
    
    var body: some View {
        Text("\(challengeName) is under development.")
            .navigationTitle(challengeName)
    }
}

#Preview {
    ChallengePlaceholderView()
}
