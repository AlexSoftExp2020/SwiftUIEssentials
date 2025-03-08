//
//  LoggedInUserData.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 08.03.2025.
//

import Foundation

class LoggedInUserData {
    static var shared = LoggedInUserData()
    
    var userId = ""
    var userName = ""
    var userToken = ""
}
