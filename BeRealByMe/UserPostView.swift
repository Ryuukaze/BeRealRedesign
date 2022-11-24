//
//  UserPostView.swift
//  BeRealByMe
//
//  Created by Cesare Masola on 22/11/22.
//

import SwiftUI

struct UserPostView: View {
    var userPost: UserPost
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack (alignment: .topLeading) {
                    Image(userPost.image)
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 150 , height: 150)
                    
                    
                    Image(userPost.frontImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 50 , height: 50)
                        .offset(x:10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (alignment: .leading ) {
                    HStack {
                        Button {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }label: {
                            Image("selfie3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40 , height: 40)
                                .clipShape(Circle())
                               
                        }
                        
                        Button {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }label: {
                            Image("selfie4")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40 , height: 40)
                                .clipShape(Circle())
                                
                                .offset(x:-30)
                    }
                        Button {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }label: {
                            Image("profile1")
                                
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40 , height: 40)
                                .clipShape(Circle())
                                .offset(x:-60)
                                
                    }
                        
                    }
                    
                        Text("\(userPost.description)")
                        
                        Text("\(userPost.location)")
                            .foregroundColor(Color.gray)
                    
                    Button("View comments") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }

                }
            }
        }
        
        
    }
}
struct UserPostView_Previews: PreviewProvider {
    static var previews: some View {
        UserPostView(userPost: UserPost(frontImage: "selfie1", image: "selfie2", description: "Hey guys", location: "San Giovanni"))
    }
}
