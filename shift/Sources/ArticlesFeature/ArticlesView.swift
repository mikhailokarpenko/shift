import SwiftUI
import ComposableArchitecture

public struct ArticlesView: View {
    let store: Store<ArticlesFeature.State, ArticlesFeature.Action>
    
    public var body: some View {
        NavigationView {
            WithViewStore(store) { viewStore in
                List {
                    ForEach(viewStore.articles) { article in
                        Text(article.title)
                    }
                }
                .navigationTitle("Articles")
            }
        }
    }
    
    public init(store: Store<ArticlesFeature.State, ArticlesFeature.Action>) {
        self.store = store
    }
}
