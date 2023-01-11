
import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    var body: some View {
        VStack(){
            Spacer(minLength: 54)
            search
            searchPost
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

extension SearchView {
    var search: some View {
        ZStack(alignment: .center){
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 370, height: 40)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            Image("magnifier")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color("primary"))
                .frame(width: 14, height: 14)
                .padding(.leading, -155)
                .opacity(0.8)
            TextField("Search", text: $searchText)
                .padding(.leading, 65)
                .foregroundColor(Color("primary"))
        }
    }
    
    
    var searchPost: some View {
        
        ScrollView {
            HStack {
                VStack(spacing: 2){
                    Image("search1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 124, height: 125)
                        .clipShape(Rectangle())
                    Image("search2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 124, height: 125)
                        .clipShape(Rectangle())
                }
                HStack(spacing: 1){
                    Image("search3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 251)
                        .clipShape(Rectangle())
                } .padding(.leading, -6)
                 
            }
            HStack(spacing: 1){
                Image("search4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
                Image("search5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
                Image("search6")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
            }
            .padding(.top, -6)
            HStack(spacing: 1){
                Image("search7")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
                Image("search8")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
                Image("search9")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
            }
            .padding(.top, -6)
            HStack(spacing: 1){
                Image("search10")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
                Image("search11")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
                Image("search12")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 124, height: 125)
                    .clipShape(Rectangle())
            }
            .padding(.top, -6)
            HStack {
                HStack(spacing: 1){
                    Image("search13")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 251)
                        .clipShape(Rectangle())
                }
                VStack(spacing: 2){
                    Image("search14")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 124, height: 125)
                        .clipShape(Rectangle())
                    Image("search15")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 124, height: 125)
                        .clipShape(Rectangle())
                }
                .padding(.leading, -6)
            }
            .padding(.top, -6)
        }
        
    }
    
}
