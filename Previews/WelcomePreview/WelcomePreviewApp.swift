import SwiftUI
import WelcomeFeature
import ComposableArchitecture

@main
struct WelcomePreviewApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView(
                store: Store(initialState: WelcomeFeature.State(),
                             reducer: WelcomeFeature())
            )
        }
    }
}
