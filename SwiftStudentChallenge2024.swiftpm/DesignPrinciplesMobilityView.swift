//
//  DesignPrinciplesMobilityView.swift
//  SwiftStudentChallenge2024
//
//  Created by Anh Nguyen on 22/2/2024.
//

import SwiftUI

struct DesignPrinciplesMobilityView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Design Principles for Mobility Disabilities")
                .font(.title)
                .padding(.bottom)
            
            Text("Ensure interactive elements are easy to target and activate; consider the size and spacing of buttons and links.")
            
            Text("Minimize the need for precise movements; design interfaces that are forgiving and require minimal dexterity.")
            
            Text("Provide keyboard shortcuts and support for voice commands to offer alternative ways to navigate and interact.")
            
            Text("Allow for customization of user interfaces, enabling users to adjust settings according to their needs, such as enabling sticky keys or adjusting mouse speed.")
            
            Text("Design forms and workflows that are efficient and require fewer steps to complete, reducing the physical strain on users.")
        }
        .padding()
        .navigationTitle("Mobility Design Principles")
    }
}

#Preview {
    DesignPrinciplesMobilityView()
}
