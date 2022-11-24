//
//  ContentView.swift
//  BeRealByMe
//
//  Created by Cesare Masola on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                Button {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }label: {
                    Image(systemName: "person.2.fill")
                    
                }
                
            }
            .padding()
            
            TabView(selection: .constant(2)) {
                Text("Tab Content 1").tabItem { Image(systemName: "globe.europe.africa")
                    Text("Discover")
                }.tag(1)
                ScrollView {
                    UserPostView(userPost: UserPost(frontImage: "selfie1", image: "profile2", description: "Hey there", location: "San Giovanni a Teduccio"))
                        .padding(.bottom, 40.0)
                        .padding(.top, 25)
                    
                    
                    PostView(post: Post.init(frontImage: "profile1", rearImage: "selfie4", image: "selfie4", name: "Domenico", description: "Today it's so hot", location: "San Giovanni a Teduccio"))
                    
                    PostView(post: Post.init(frontImage: "profile3", rearImage: "selfie5", image: "profile3", name: "Matilda", description: "Living the time of my life", location: "San Giovanni a Teduccio"))
                    
                    PostView(post: Post.init(frontImage: "profile4", rearImage: "profile5", image: "profile4", name: "Maria", description: "Loving the experience", location: "San Giovanni a Teduccio"))
                    
                    
                }.tabItem { Image(systemName: "theatermasks")
                    Text("Friends")
                }.tag(2)
                Text("Tab Content 3").tabItem { Image(systemName: "calendar")
                    Text("Calendar")
                }.tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
