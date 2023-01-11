
import SwiftUI

struct LikeView: View {
    let user: StoryModel
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    lineLike
                    lineLikeDouble
                    lineLikeDouble
                    lineLikeDouble
                    lineLikeDouble
                    lineLikeDouble
                    lineLikeDouble
                    lineLikeDouble
                    lineLikeDouble
                    Spacer()
                }
            }
            .toolbar {
                self.toolBarView()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LikeView_Previews: PreviewProvider {
    static var previews: some View {
        LikeView(user: StoryModel.getStorie()[1])
    }
}


extension LikeView {
    
    @ToolbarContentBuilder
    func toolBarView() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button {
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color("primary"))
            }
        }
        ToolbarItem(placement: .navigationBarLeading) {
            Text("Notifications")
                .font(.system(size: 25))
                .bold()
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
            } label: {
                Text("Filter")
                    .foregroundColor(Color.blue)
            }
        }
    }
   
    
    var lineLike: some View{
        VStack {
            Text("New")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding(.leading, -170)
            HStack{
                cellImageSingle
                textLikeSingle
                postLike
            }
            Divider() .overlay(Color("primary")).frame(height: 1).opacity(0.3)
            Text("This Week")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding(.leading, -170)
            
        }
    }
    
    var cellImageSingle: some View {
        ZStack(alignment: .bottom) {
            Image(user.user.profilePicture)
                .resizable()
                .scaledToFill()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
        }
    }
    
    
    
    var textLikeSingle: some View {
        HStack {
            Text(user.user.userName)
                .bold()
                .font(.system(size: 13))
            +
            Text(" liked your photo.")
                .font(.system(size: 13))
            +
            Text(" 1h")
                .font(.system(size: 13))
                .foregroundColor(Color.gray)
        }.padding(.leading, 5)
        .frame(width: 260, height: 38, alignment: .leading)
    }
    
    var postLike: some View {
        HStack{
            Image("post-1")
                .resizable()
        }
        .frame(width: 44, height: 44, alignment: .trailing)
    }
    
    var lineLikeDouble: some View {
        HStack(){
            cellImageOverlay
            textLikeOverlay
            postLikeTwo
        }
        
    }
    
    var cellImageOverlay: some View {
        HStack{
            ZStack(alignment: .bottom) {
                Image(StoryModel.getStorie().randomElement()!.user.profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    .padding(.bottom, 10)
                    .padding(.trailing, 30)
                
                Image(StoryModel.getStorie().randomElement()!.user.profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color("background"), lineWidth: 2)
                            .padding(.all, -1)
                        
                    }
                
            }
        }
    }
    
    var textLikeOverlay: some View {
      Group {
            HStack(){
                Text("\(StoryModel.getStorie().randomElement()!.user.userName), ")
                    .bold()
                    .font(.system(size: 13))
                +
                Text(StoryModel.getStorie().randomElement()!.user.userName)
                    .bold()
                    .font(.system(size: 13))
                +
                Text(" and")
                    .font(.system(size: 13))
                +
                Text(" others \(Int.random(in: 123...3000))")
                    .font(.system(size: 13))
                    .bold()
                +
                Text(" liked your photo.")
                    .font(.system(size: 13))
                +
                Text(" 2d")
                    .font(.system(size: 13))
                    .foregroundColor(Color.gray)
            }.padding(.leading, -15)
            
       }.frame(width: 240, height: 38, alignment: .leading)

    }
    
    var postLikeTwo: some View {
        HStack{
            Image("post-\(Int.random(in: 1...12))")
                .resizable()

        }
        .frame(width: 44, height: 44, alignment: .trailing)
        
    }
   
}
