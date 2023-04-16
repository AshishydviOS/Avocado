//
//  ContentView.swift
//  Avocados
//
//  Created by Ashish Yadav on 03/04/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var headers: [Header] = headerData
    var facts: [Fact] = factsData
    var recipe: [Recipe] = recipeData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                    }
                }
                
                // MARK: - DISHES
                Text("Avocados Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - FACTS
                Text("Avocados Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                // MARK: - RECIPE CARD
                Text("Avocados Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipe) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                // MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you want to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                    
                } // :VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } // :VStack
        } // :ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

// MARK: - TITLE MODIFIER
struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headerData, facts: factsData, recipe: recipeData)
//            .environment(\.colorScheme, .dark)
    }
}
