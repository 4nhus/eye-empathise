import SwiftUI

struct ContentView: View {
    var body: some View {
        // Make sidebar hidden on app open
        NavigationSplitView {
            List {
                NavigationLink("App Overview", destination: AppOverviewView())
                NavigationLink("Understanding Disability", destination: UnderstandingDisabilityView())
            }
            .navigationTitle("AccessibilityQuest")
        } detail: {
            AppOverviewView();
        }
    }
}
