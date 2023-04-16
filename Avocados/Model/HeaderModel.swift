//
//  HeaderModel.swift
//  Avocados
//
//  Created by Ashish Yadav on 03/04/23.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header : Identifiable {
    let id = UUID()
    let image: String
    let headline: String
    let subheadline: String
}


