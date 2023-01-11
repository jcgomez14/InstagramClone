

import SwiftUI

struct TimelineView: View {
    var timeline: TimelineModel
    
    var body: some View {
        VStack(spacing: 10){
            headerView
            photoView
            actionIcon
            likeSection
            commentSection

        }
    }
}

extension TimelineView {
    var commentSection: some View {
        HStack {
            Text(timeline.user.userName).bold()
            + Text(" \(CommentModel.getComment().randomElement()!.comment)")
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    
    var likeSection: some View {
        HStack {
            Image(UserModel.getUser().randomElement()!.profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 17, height: 17)
                .clipShape(Circle())
            
            Text("Like by ")
            + Text(UserModel.getUser().randomElement()!.userName).bold()
            + Text(" and ")
            + Text("\(Int.random(in: 20...30000)) others").bold()
        }
        .font(.system(size: 13))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    var actionIcon: some View {
        HStack(spacing: 17) {
            Button {
            } label: {
                Image("like")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            Button {
            } label: {
                Image("comment")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            Button {
            } label: {
                Image("messanger")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
            Spacer()
            Button {
            } label: {
                Image("save")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
    
    
    var photoView: some  View {
        Image(timeline.photo)
            .resizable()
            .frame(height: UIScreen.main.bounds.width)
            .frame(maxWidth: .infinity)
            .aspectRatio(contentMode: .fill)
    }
    
    var headerView: some View {
        HStack{
            Image(timeline.user.profilePicture)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 32, height: 32)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 2){
                HStack{
                    Text(timeline.user.userName)
                        .font(.system(size: 13, weight: .bold))
                    if timeline.user.isVerified {
                        Image("official-icon")
                            .resizable()
                            .frame(width: 10, height: 10)
                    }
                }
                    Text(timeline.user.city)
                        .font(.system(size: 11))
            }
            Spacer()
            Button {
                
            } label: {
                Image("more-icon")
                    .renderingMode(.template)
                    .foregroundColor(Color("primary"))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 14)
    }
}



struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(timeline: TimelineModel.getPots()[0])
    }
}
