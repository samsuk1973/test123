//
//  UserSwift.swift
//  ObjectMapperDemo
//
//  Created by LaNet on 12/30/16.
//  Copyright © 2016 Dev. All rights reserved.
//

import ObjectMapper
import Foundation

class UserSwift: NSObject, Mappable {

    var userId: NSNumber?
    var name: String?
    var username: String?
    var email: String?
    // MARK: - object mapping
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        userId      <- map["id"]
        name  <- map["name"]
        username       <- map["username"]
        email        <- map["email"]
    }
    
}
