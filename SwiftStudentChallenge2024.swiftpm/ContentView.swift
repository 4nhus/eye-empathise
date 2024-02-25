import SwiftUI

struct ContentView: View {
    var body: some View {
        // Make sidebar hidden on app open
        // Add enum / class for static string constants
        NavigationSplitView {
            List {
                NavigationLink("Overview", destination: AppOverviewView())
                NavigationLink("Instructions", destination: InstructionView())
                NavigationLink("Rationale", destination: RationaleView())
                NavigationLink("Simulation", destination: VisualDisabilitySimulationView())
            }
            .navigationTitle(AppDetails.name)
        } detail: {
            NavigationStack {
                AppOverviewView()
            }
        }
        .navigationSplitViewStyle(.prominentDetail)
    }
}
