
import Foundation

struct UserModel: Identifiable {
    let id = UUID()
    let userName: String
    let profilePicture: String
    let city: String
    let isVerified: Bool
    let isPrivate: Bool
    let isHistory: Bool
    
    static func getUser() -> [UserModel] {
        return [
            .init(userName: "rich", profilePicture: "person-1", city: "Tokyo, Japon", isVerified: true, isPrivate: false, isHistory: true),
            .init(userName: "karen", profilePicture: "person-2", city: "Espana, Barcelona", isVerified: false, isPrivate: true, isHistory: false),
            .init(userName: "lucia", profilePicture: "person-3", city: "", isVerified: false, isPrivate: true, isHistory: true),
            .init(userName: "taich", profilePicture: "person-4", city: "", isVerified: false, isPrivate: false, isHistory: false),
            .init(userName: "juan", profilePicture: "person-5", city: "Mendoza, Buenos Aires", isVerified: true, isPrivate: true, isHistory: false),
            .init(userName: "pepe", profilePicture: "person-6", city: "", isVerified: false, isPrivate: false, isHistory: true),
        ]
    }
    
}


struct StoryModel: Identifiable {
    let id = UUID()
    let user: UserModel
    let isLive: Bool
    
    static func getStorie() -> [Self] {
        return UserModel.getUser().map { StoryModel(user: $0, isLive: ([true, false].randomElement())!)}
    }
}

struct TimelineModel: Identifiable {
    let id = UUID()
    let photo: String
    let user: UserModel
    
    static func getPots() -> [Self] {
        return (1..<7).map{TimelineModel(photo: "post-\($0)", user: UserModel.getUser().randomElement()!)}
    }
}

struct CommentModel: Identifiable {
    let id = UUID()
    let comment: String
    
    static func getComment() -> [Self] {
        return [
            .init(comment: "Excelente"),
            .init(comment: "Que linda foto"),
            .init(comment: "Woh!"),
            .init(comment: "Sorprendente"),
            .init(comment: "Quiero estar ahi")
        ]
    }
}
