//
//  Models.swift
//  BeRealByMe
//
//  Created by Cesare Masola on 18/11/22.
//

import Foundation


struct Post: Identifiable {
    
    let id = UUID()
    var frontImage: String
    var rearImage: String
    var image: String
    var name: String
    var description: String
    var location: String
    
}
    
struct UserPost: Identifiable {
    
    let id = UUID()
    var frontImage: String
    var image: String
    var description: String
    var location: String
    
}
