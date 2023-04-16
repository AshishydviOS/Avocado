//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Ashish Yadav on 05/04/23.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - Properties
    var recipe: Recipe
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

// MARK: - Preview
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 400, height: 400))
    }
}
