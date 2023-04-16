//
//  AppView.swift
//  Avocados
//
//  Created by Ashish Yadav on 03/04/23.
//

import SwiftUI

struct AppView: View {
//  Alternative to color the tab bar
//    init() {
//        UITabBar.appearance().backgroundColor = UIColor.lightGray
//    }
    
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
//                .toolbar(.visible, for: .tabBar)
//                .toolbarBackground(
//                    Color.yellow,
//                    for: .tabBar)

            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipts")
                }
//                .toolbarBackground(Color.yellow,
//                                   for: .tabBar)
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }

            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
