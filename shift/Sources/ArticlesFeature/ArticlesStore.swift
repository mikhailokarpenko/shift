import Foundation
import Models
import ComposableArchitecture

public struct ArticlesFeature: ReducerProtocol {
    //MARK: - State
    
    public struct State: Equatable {
        var articles: [Article]
        public init(articles: [Article]) {
            self.articles = articles
        }
    }

    //MARK: - Action

    public enum Action: Equatable {
    }

    //MARK: - Reducer

    public var body: some ReducerProtocol<State, Action> {
        EmptyReducer()
    }
    
    public init() {}
}
