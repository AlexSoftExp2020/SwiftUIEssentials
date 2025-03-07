//
//  AppStorage_Intro_Previews.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 07.03.2025.
//

import SwiftUI

struct AppStorage_Intro_Previews: PreviewProvider {
    @AppStorage("username") static var username: String!
    
    static var previews: some View {
        username = "really_really_really_really_long_username"
        return Group {
            AppStorage_Intro()
            AppStorage_Edit()
        }
    }
}

//MARK: Alternative @AppStorage Initializers

/*
 @AppStorage("darkBackground") var darkBackground = false
 @AppStorage(wrappedValue: false, "darkBackground") var darkBackground
 */

//MARK: @AppStorage Summary
/*
 
 Value types you can use with @AppStorage include:
 String
 Int
 Bool
 URL
 Double
 Data
 
 */
