//
//  BoardView.swift
//  GameOfLife
//
//  Created by Weerawut Chaiyasomboon on 07/05/2568.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        Rectangle()
            .fill(.blue)
            .aspectRatio(contentMode: .fit)
            .padding(.horizontal)
            .overlay {
                Text("Board View")
                    .bold()
                    .foregroundStyle(.white)
            }
    }
}

#Preview {
    BoardView()
}
