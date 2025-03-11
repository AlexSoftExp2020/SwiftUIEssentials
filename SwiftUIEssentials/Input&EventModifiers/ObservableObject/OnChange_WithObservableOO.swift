//
//  OnChange_WithObservableOO.swift
//  SwiftUIEssentials
//
//  Created by Oleksii on 11.03.2025.
//

import SwiftUI

class OnChange_WithObservableOO {
    var data: [String] = []
    
    func fetchData() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) { [self] in
            data = ["Datum 1", "Datum 2", "Datum 3"]
        }
    }
}
