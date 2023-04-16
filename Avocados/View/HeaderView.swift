//
//  HeaderView.swift
//  Avocados
//
//  Created by Ashish Yadav on 03/04/23.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    var header: Header
    @State private var showHeadline: Bool = false
    
    var slideAnimation: Animation {
        Animation.spring(response: 1.5,
                         dampingFraction: 0.5,
                         blendDuration: 0.5)
        .speed(1)
        .delay(0.25)
    }
    
    // MARK: - Body
    var body: some View {
        ZStack {
            // Background Image
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            
            HStack(alignment: .top, spacing: 0) {
                // 285 = 4 + 281
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    // Title
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    // Description
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                } // :VStack
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            } // :HStack
            .frame(width: 285, height: 105)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideAnimation)
            .onAppear {
                self.showHeadline = true
            }
        } // :ZStack
        .frame(width: 480, height: 320, alignment: .center)
    }
}

// MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headerData[1])
            .previewLayout(.sizeThatFits)
//            .environment(\.colorScheme, .dark)
    }
}
