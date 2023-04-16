//
//  SettingsView.swift
//  Avocados
//
//  Created by Ashish Yadav on 03/04/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = true
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundColor(Color("ColorGreenAdaptive"))
            } // :VStack
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                } header: {
                    Text("General Settings")
                } // :Section 1
                
                // MARK: - SECTION #2
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Ashish Yadav")
                        }
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                } header: {
                    Text("Application")
                } // :Section 2
            } // :Form
        } // :VStack
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
