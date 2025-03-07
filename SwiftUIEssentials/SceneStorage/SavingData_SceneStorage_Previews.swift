//
//  SavingData_SceneStorage_Previews.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 07.03.2025.
//

import SwiftUI

struct SavingData_SceneStorage_Previews: PreviewProvider {
    @SceneStorage("textInput") var textInput = "Preview Data"

    static var previews: some View {
        Group {
            SavingData_SceneStorage()
            
            NavigationStack {
                SavingData_DataEntry(textInput: "textInput", stateText: "stateText")
            }
        }
    }
}


//MARK: What can yous store in @SceneStorage?
/*
 Just like @AppStorage, you can store:
 - URL
 - Int
 - Bool
 - Doublle
 - String
 - Data
 */
