import ComposableArchitecture
import SwiftUI
import WelcomeFeature

@main
struct Application: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView(
                store: Store(initialState: WelcomeFeature.State(),
                             reducer: WelcomeFeature())
            )
        }
    }
}
