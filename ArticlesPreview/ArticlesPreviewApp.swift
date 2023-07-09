import SwiftUI
import ArticlesFeature
import ComposableArchitecture

@main
struct ArticlesPreviewApp: App {
    var body: some Scene {
        WindowGroup {
            ArticlesView(
                store: Store(initialState: ArticlesFeature.State(articles: [.mock, .mock, .mock]),
                             reducer: ArticlesFeature()))
        }
    }
}
