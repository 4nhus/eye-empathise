import SwiftUI

struct ContentView: View {
    var body: some View {
        // Make sidebar hidden on app open
        NavigationSplitView {
            List {
                NavigationLink("App Overview", destination: AppOverviewView())
                NavigationLink("Understanding Disability", destination: UnderstandingDisabilityView())
                NavigationLink("Visual Disabilities", destination: VisualDisabilityView())
                NavigationLink("Apple Accessibilitiy Technologies for Visual Disabilities", destination: VisualDisabilityTechnologyView())
                NavigationLink("Challenge 1", destination: ChallengePlaceholderView())
                NavigationLink("Hearing Disabilities", destination: HearingDisabilityView())
                NavigationLink("Apple Accessibilitiy Technologies for Hearing Disabilities", destination: HearingDisabilityTechnologyView())
                NavigationLink("Challenge 2", destination: ChallengePlaceholderView())
                NavigationLink("Mobility Disabilities", destination: MobilityDisabilityView())
                NavigationLink("Challenge 3", destination: ChallengePlaceholderView())
                NavigationLink("Challenge 4", destination: ChallengePlaceholderView())
                NavigationLink("Challenge 5", destination: ChallengePlaceholderView())
                NavigationLink("Challenge 6", destination: ChallengePlaceholderView())
            }
            .navigationTitle("AccessibilityQuest")
        } detail: {
            AppOverviewView();
        }
    }
}
