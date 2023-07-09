import Foundation

public struct Article: Equatable, Identifiable, Codable {
    public var id: UUID
    public var title: String
    public var content: String
    public var isRead: Bool = false
    
    public static let mock: Self = .init(
        id: UUID(),
        title: "Title Header",
        content: "Content goes here",
        isRead: false
    )
    
    private enum CodingKeys: String, CodingKey {
        case id, title
        case content = "basic_content"
        case isRead = "isReaded"
    }
}
