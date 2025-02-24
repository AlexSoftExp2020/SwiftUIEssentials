//
//  DogsOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 24.02.2025.
//

import SwiftUI

@Observable
class DogsOO {
    var data: [DogsDO] = []
    
    func fetch() {
#if DEBUG // Mock data here
        data = [
            DogsDO(name: "Saint Bernard"),
            DogsDO(name: "English Mastiff"),
            DogsDO(name: "Newfoundland")
        ]
#else // Real data, API calls, etc
        data = [
            DogsDO(name: "Dachshund"),
            DogsDO(name: "Boston Terrier"),
            DogsDO("Pug")
        ]
#endif
    }
}
