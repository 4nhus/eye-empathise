import SwiftUI

struct ContentView: View {
    var body: some View {
        // Make sidebar hidden on app open
        NavigationSplitView {
            List {
                NavigationLink("App Overview", destination: Text(""))
                NavigationLink("Understanding Disability", destination: Text(""))
            }
            .navigationTitle("AccessibilityQuest")
        } detail: {
            Text("")
        }
    }
}
