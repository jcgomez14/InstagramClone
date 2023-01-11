
import SwiftUI

struct ProfileView: View {
   @State var user: UserModel
    
    
    var body: some View {
        NavigationStack {
            VStack() {
                infoProfile
                Divider() .overlay(Color("primary")).frame(height: 1).opacity(0.3)
                    .padding(.top, 40)
                Spacer()
                timelineUser
            }
            .padding(.top)
            .toolbar {
                self.toolBarView()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: UserModel.getUser()[4])
    }
}

extension ProfileView {
    
    @ToolbarContentBuilder
    func toolBarView() -> some ToolbarContent {
        ToolbarItem(placement: .principal) {
            
            HStack {
                if user.isPrivate {
                    Image(systemName: "lock.fill")
                        .resizable()
                    .frame(width: 9, height: 12)
                }
                Text(user.userName).bold()
                    .foregroundColor(Color("primary"))
                Button {
                } label: {
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 11, height: 7)
                        .foregroundColor(Color("primary"))
                    
                }
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal")
                    .frame(width: 20.5, height: 17.5)
                    .foregroundColor(Color("primary"))
            }
            
        }
    }
    
    
    var infoProfile: some View {
        VStack{
            VStack(alignment: .leading, spacing: 14){
                HStack(spacing: 35){
                    Image("person-5")
                        .resizable()
                        .frame(width: 96, height: 96)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(Color("primary"), lineWidth: 1.5).opacity(0.2)
                                .padding(.all, -4)
                        }
                        .padding(.leading, -40)
                    VStack(alignment: .trailing) {
                        HStack(spacing: 20) {
                            VStack{
                                Text("12")
                                    .bold()
                                Text("Post")
                                    .font(.system(size: 13))
                            }
                            VStack {
                                Text("\(Int.random(in: 100...1830))")
                                    .bold()
                                Text("Followers")
                                    .font(.system(size: 13))
                            }
                            VStack {
                                Text("\(Int.random(in: 50...10000))")
                                    .bold()
                                Text("Following")
                                    .font(.system(size: 13))
                            }
                        }
                    }
                }
                VStack(alignment: .leading, spacing: 1) {
                    Text("Juan")
                        .bold()
                    Text("iOS Developer")
                        .font(.system(size: 13))
                    
                }
                .padding(.leading, -25)
            }
            VStack {
                Button {
                    
                } label: {
                    Rectangle()
                        .fill(Color.clear)
 
                }
                .frame(width: 340, height: 29)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke( Color("primary"),
                                 lineWidth: 2
                        )
                        .opacity(0.1)
                    Text("Edit Profile")
                        .bold()
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 13))
                    
                }
            }
            .padding(.top, 0)
            HStack(){
            Image(systemName: "plus")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 18, height: 18)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color("primary"), lineWidth: 1)
                        .opacity(0.3)
                        .padding(.all, -20)
                    )
            }
            .padding(.top, 26)
            .padding(.leading, -148)
        }
    }

    var timelineUser: some View {
        VStack {
            HStack(spacing: 140) {
                Image(systemName: "squareshape.split.3x3")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color("primary"))
                Image(systemName: "person.crop.square")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color("primary")).opacity(0.3)
            }.padding(.all, 3)
            ScrollView{
                Grid {
                    GridRow {
                        Image("post-1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                    }
                    GridRow {
                        Image("post-4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                    }
                    GridRow {
                        Image("post-7")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-8")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-9")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                    }
                    GridRow {
                        Image("post-10")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-11")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                        Image("post-12")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 124, height: 125)
                            .clipShape(Rectangle())
                    }
                }
            }
        }
        
    }
    
    
}
