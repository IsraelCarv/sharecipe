import SwiftUI
import AVFoundation

@main
struct SharecipeApp: App {
    @StateObject var workingOnRecipeManager = WorkingOnRecipeManager() //Calls Modules

    init() {
        LocalNotificationManager.shared.requestAuthorization()
    }

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                LoadingView()
            }
            .environmentObject(workingOnRecipeManager)
        }
    }
}
