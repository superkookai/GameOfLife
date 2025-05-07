//
//  MainView.swift
//  GameOfLife
//
//  Created by Weerawut Chaiyasomboon on 07/05/2568.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                //Title
                TitleView()
                
                Spacer()
                
                //Board
                BoardView()
                
                Spacer()
                
                //Controls
                ControlView()
            }
            .padding()
        }
    }
}

#Preview("Light Mode") {
    MainView()
        .preferredColorScheme(.light)
}

#Preview("Dark Mode") {
    MainView()
        .preferredColorScheme(.dark)
}





