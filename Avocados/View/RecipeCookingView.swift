//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Ashish Yadav on 05/04/23.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - Properties
    var recipe: Recipe
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.serves)")
            }
        } // :HStack
    }
}

// MARK: - Preview
struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
