//
//  FactModel.swift
//  Avocados
//
//  Created by Ashish Yadav on 04/04/23.
//

import Foundation

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
