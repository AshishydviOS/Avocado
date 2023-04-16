//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Ashish Yadav on 05/04/23.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - Properties
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var recipe: Recipe
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                // MARK: - IMAGE
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // MARK: - TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // MARK: - RATING
                    RecipeRatingView(recipe: recipe)
                    
                    // MARK: - COOKING
                    RecipeCookingView(recipe: recipe)
                    
                    // MARK: - INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            } // :VStack
                        } // :ForEach
                    } // :VStack
                    
                    // MARK: - INSTRUCTION
                    Text("Instruction")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    
                    
                    ForEach(recipe.instructions, id: \.self) { instValue in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            
                            Text(instValue)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        } // :VStack
                    } // :ForEach
                } // :Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            } // :VStack
        } // :ScrollView
        .edgesIgnoringSafeArea(.top)
        .overlay(alignment: .topTrailing) {
            Button {
                self.presentationMode.wrappedValue.dismiss()
                print("Button Clicked")
            } label: {
                Image(systemName: "chevron.down.circle.fill")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .shadow(radius: 4)
                    .opacity(self.pulsate ? 1 : 0.6)
                    .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                    .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    .padding(.trailing, 20)
                    .padding(.top, 24)
            }
        }
        .onAppear() {
            self.pulsate.toggle()
        }
    }
}

// MARK: - Preview
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
