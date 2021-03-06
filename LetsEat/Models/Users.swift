//
//  User.swift
//  LetsEat
//
//  Created by Shawn Miller on 7/19/17.
//  Copyright © 2017 Make School. All rights reserved.
//


import Foundation
import FirebaseDatabase.FIRDataSnapshot


class Users {
    
    // MARK: - Properties
    
    let uid: String
    let username: String
    
    // MARK: - Init
    
    init(uid: String, username: String) {
        self.uid = uid
        self.username = username
    }
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let username = dict["username"] as? String
            else { return nil }
        
        self.uid = snapshot.key
        self.username = username
    }
    
 
    
    
}
