
import SwiftUI

struct StoryView: View {
    let story: StoryModel
    var randomColor: [Color] = [Color("gradiant-story-1"), Color("gradiant-story-2"), Color("gradiant-story-3")]
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack(alignment: .bottom) {
                Image(story.user.profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(
                                LinearGradient(
                                    colors: randomColor.shuffled(),
                                    startPoint: .bottom,
                                    endPoint: .trailing),
                                lineWidth: 2
                            )
                            .padding(.all, -3)
                }
                if story.isLive {
                    liveTag
                }
            }
            Text(story.user.userName)
                .frame(width: 75)
                .lineLimit(1)
                .font(.system(size: 12))
        }
    }
    

}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: StoryModel.getStorie()[0])
    }
}


extension StoryView {
    var liveTag: some View {
        RoundedRectangle(cornerRadius: 3)
            .fill( LinearGradient(
                colors: [
                    Color("live-1"),
                    Color("live-2"),
                    Color("live-3")
                ],
                startPoint: .leading,
                endPoint: .trailing))
            .frame(width: 26, height: 16)
            .padding(.bottom, -8)
            .overlay {
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color("background"), lineWidth: 2)
                    .frame(width: 26, height: 16)
                    .padding(.bottom, -8)
                    .overlay {
                        Text("LIVE")
                            .font(.system(size: 8, weight: .bold))
                            .foregroundColor(Color.white)
                            .padding(.top, 8)
                    }
                
            }
    }
}
