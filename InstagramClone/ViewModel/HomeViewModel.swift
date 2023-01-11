
import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var timerList = [TimelineModel]()
    @Published var storyList = [StoryModel]()
    @Published var userList = [UserModel]()
    
    
    init() {
        self.timerList = TimelineModel.getPots()
        self.storyList = StoryModel.getStorie()
        self.userList = UserModel.getUser()
    }
}
