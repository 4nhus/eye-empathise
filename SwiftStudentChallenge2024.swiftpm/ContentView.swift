import SwiftUI

struct ContentView: View {
    @State private var visibilitySectionExpanded = false;
    var body: some View {
        // Make sidebar hidden on app open
        // Add enum / class for static string constants
        NavigationSplitView {
            List {
                Section {
                    NavigationLink("Overview", destination: AppOverviewView())
                    NavigationLink("Understanding Disability", destination: UnderstandingDisabilityView())
                } header: {
                    Label("Introduction", systemImage: "info")
                }
                Section {
                    NavigationLink("Overview", destination: VisualDisabilityView())
                    NavigationLink("Accessibilitity Technologies", destination: VisualDisabilityTechnologyView())
                    NavigationLink("Technology Challenge", destination: ChallengePlaceholderView())
                    NavigationLink("Accessible Design Principles", destination: DesignPrinciplesVisualView())
                } header: {
                    Label("Vision Disabilities", systemImage: "eye")
                }
                Section {
                    NavigationLink("Overview", destination: HearingDisabilityView())
                    NavigationLink("Accessibilitiy Technologies", destination: HearingDisabilityTechnologyView())
                    NavigationLink("Technology Challenge", destination: ChallengePlaceholderView())
                    NavigationLink("Accessible Design Principles", destination: DesignPrinciplesHearingView())
                } header: {
                    Label("Hearing Disabilities", systemImage: "ear")
                }
                Section {
                    NavigationLink("Overview", destination: MobilityDisabilityView())
                    NavigationLink("Accessibilitiy Technologies", destination: MobilityDisabilityTechnologyView())
                    NavigationLink("Technology Challenge", destination: ChallengePlaceholderView())
                    NavigationLink("Accessible Design Principles", destination: DesignPrinciplesMobilityView())
                } header: {
                    Label("Mobility Disabilities", systemImage: "hand.draw")
                }
            }
            .navigationTitle("AccessibilityQuest")
        } detail: {
            AppOverviewView();
        }
    }
}
