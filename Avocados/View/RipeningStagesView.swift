//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Ashish Yadav on 03/04/23.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - Properties
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    } // :ForEach
                } // :HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            } // :VStack
        } // :ScrollView
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
