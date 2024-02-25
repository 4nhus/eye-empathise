import SwiftUI

struct ContentView: View {
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
            }
            .navigationTitle("AccessibilityQuest")
        } detail: {
            AppOverviewView();
            
        }
        .navigationSplitViewStyle(.prominentDetail)
    }
}
