//
//  TitleView.swift
//  GameOfLife
//
//  Created by Weerawut Chaiyasomboon on 07/05/2568.
//

import SwiftUI

struct TitleView: View {
    //Use colorScheme to alter Light or Dark
    //@Environment(\.colorScheme) var colorScheme
    
    //Use Assets to alter Light or Dark
    var gradientColors: [Color] {
        [.gradColor1, .gradColor2, .gradColor3]
    }
    
    var body: some View {
        Text("Game of Life")
            .font(.largeTitle.bold())
            .foregroundStyle(
                LinearGradient(
                    colors: gradientColors,
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .shadow(color: .shadow, radius: 10, x: 0, y: 5)
    }
}

#Preview {
    TitleView()
}
