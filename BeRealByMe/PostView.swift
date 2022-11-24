//
//  PostView.swift
//  BeRealByMe
//
//  Created by Cesare Masola on 21/11/22.
//

import SwiftUI

struct PostView: View{
        var post: Post
        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Image(post.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60 , height: 60)
                        .clipShape(Circle())
                        .navigationTitle(post.name)
                    .shadow(radius: 50)

                    VStack (alignment: .leading){
                        Text("\(post.name)")
                            .font(.title)
                            
                        Text("\(post.description)")
                            
                        Text("\(post.location)")
                            .foregroundColor(Color.gray)
                            
                    }
 
                    Spacer()
                }
                .padding(.horizontal)
                
                ZStack (alignment: .bottomLeading) {
                    Image(post.rearImage)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                  
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
                                Image("selfie1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40 , height: 40)
                                    .clipShape(Circle())
                                    
                                    .offset(x:-30)
                        }
                            Button {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }label: {
                                Image("selfie4")
                                    
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40 , height: 40)
                                    .clipShape(Circle())
                                    .offset(x:-60)
                                    
                        }
                            Spacer()
                        
                        VStack{
                            Button {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }label: {
                                Image(systemName: "bubble.left.fill")
                                    .resizable(capInsets: EdgeInsets())
                                    .frame(width: 40.0, height: 40.0)
                                    .scaledToFit()
                                    .foregroundColor(.white)
                                
                            }
                            
                            Button {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }label: {
                                Image(systemName: "hand.thumbsup.fill")
                                    .resizable(capInsets: EdgeInsets())
                                    .frame(width: 40.0, height: 40.0)
                                    .scaledToFit()
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical)


                        }
                        
                        
                        }
                    .padding()
                    
                    VStack {
                        HStack {
                            Image(post.frontImage)
                                .resizable()
                                .frame(width: 100.0, height: 150.0)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            .scaledToFit()
                            .offset(x:20)
                            Spacer()
                        }
                        
                        Spacer()
                            .frame(width: 0.0, height: 300.0)
                    }
 
                }

                .padding()
                
                Spacer()
                
            }
            
                
        }
    }


struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(frontImage: "selfie1", rearImage: "selfie2", image: "selfie1", name: "Mario", description: "Descrizione", location: "San Giovanni"))
    }
}
