//
//  DataService.swift
//  DalloulSocial
//
//  Created by Sady Dalloul on 8/9/18.
//  Copyright © 2018 Sady Dalloul. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()


class DataService{
    static let ds = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_POSTS = DB_BASE.child("posts")
    private var _REF_USERS = DB_BASE.child("users")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_POSTS: DatabaseReference {
        return _REF_POSTS
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    func createFirbaseDBUser(uid: String, userData: Dictionary<String, String>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
}
