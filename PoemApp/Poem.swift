import Foundation

struct Poem: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let content: String
    let details: String
    let emoji: String
}
