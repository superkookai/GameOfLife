//
//  BoardModel.swift
//  GameOfLife
//
//  Created by Weerawut Chaiyasomboon on 07/05/2568.
//

import Foundation

struct BoardModel {
    var gridSize: Int
    var creatures: [[Int]] = []
    
    init(gridSize: Int) {
        self.gridSize = gridSize
    }
    
    mutating func randomBoard() {
        creatures = []
        for _ in 0..<gridSize {
            creatures.append(
                Array(repeating: 0, count: gridSize)
                    .map({ _ in
                        Int.random(in: 0...1)
                    })
            )
        }
    }
    
    mutating func clearBoard() {
        creatures = Array(
            repeating: Array(repeating: 0, count: gridSize),
            count: gridSize
        )
    }
    
    //Count Live Neighbours (1) around row index and col index
    func countLiveNeighbours(row: Int, col: Int) -> Int {
        var count = 0
        let directions: [(x: Int, y: Int)] = [
            (-1,-1), (0, -1), (1, -1),
            (-1,0), (1, 0),
            (-1,1), (0, 1), (1, 1)
        ]
        
        for direction in directions {
            let newRow = (row + direction.x + gridSize) % gridSize
            let newCol = (col + direction.y + gridSize) % gridSize
            count += self.creatures[newRow][newCol]
        }
        
        
        return count
    }
    
    mutating func safelyAssignCreatureState(i: Int, j: Int, state: Int) {
        let safeRow = (i+gridSize) % gridSize
        let safeCol = (j+gridSize) % gridSize
        self.creatures[safeRow][safeCol] = state
    }
}


