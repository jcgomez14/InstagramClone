
import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = HomeViewModel()
    
    init() {
        let appearence = UINavigationBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.backgroundColor = UIColor(named: "tabBar-bg")
        
        UINavigationBar.appearance().standardAppearance = appearence
        UINavigationBar.appearance().compactAppearance = appearence
        UINavigationBar.appearance().scrollEdgeAppearance = appearence
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 2) {
                Divider() .overlay(Color("primary")).frame(height: 1).opacity(0.3)
                ScrollView {
                    VStack() {
                        storyList
                        Divider().overlay(Color("primary")).frame(height: 1).opacity(0.3)
                        timelineList
                    }
                    Color.clear
                        .padding(.bottom, 25)
                    .toolbar {
                        self.toolBarView()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    @ToolbarContentBuilder
    func toolBarView() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button {
            } label: {
                Image("camera-Icon")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
        }
        ToolbarItem(placement: .principal) {
            Image("instagram-logo")
                .renderingMode(.template)
                .foregroundColor(Color("primary"))
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                
            } label: {
                Image("igtv")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                
            } label: {
                Image("messanger")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            
        }
    }
    
    var storyList: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(viewModel.storyList) { story in
                    StoryView(story: story)
                }
            }
            .padding(.leading, 10)
            .padding(.vertical, 6)
        }
    }
    
    var timelineList: some View {
        ForEach(viewModel.timerList) { timeline in
            TimelineView(timeline: timeline)
        }
        
    }
}
