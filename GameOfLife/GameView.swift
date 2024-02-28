////
////  GameView.swift
////  GameOfLife
////
////  Created by Amanda Conde on 27/02/24.
////
//
//import SwiftUI
//struct GameView: View {
//  @State var cells: [[Cell]] = Array(repeating: Array(repeating: Cell(), count: 15), count: 10)
//    
//    @Binding var isPaused: Bool
//    
//  var body: some View {
//    ForEach(0..<cells.count, id: \.self) { row in
//      HStack {
//        ForEach(0..<self.cells[row].count, id: \.self) { column in
//          CellView(cell: self.$cells[row][column])
//        }
//      }
//    }
//    .onAppear(perform: gameLoop)
//    .onChange(of: isPaused) { newValue in
//      if !newValue {
//        gameLoop()
//      }
//    }
//  }
//  func gameLoop() {
//    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//      var newCells = cells
//      let numberOfRows = cells.count
//      let numberOfColumns = cells[0].count
//      for row in 0..<numberOfRows {
//        for column in 0..<numberOfColumns {
//          let cell = cells[row][column]
//          let neighbors = self.neighbors(ofRow: row, andColumn: column)
//          let aliveNeighbors = neighbors.filter { $0.isAlive }.count
//          if cell.isAlive {
//            if aliveNeighbors < 2 || aliveNeighbors > 3 {
//              newCells[row][column].isAlive = false
//            }
//          } else if aliveNeighbors == 3 {
//            newCells[row][column].isAlive = true
//          }
//        }
//      }
//      cells = newCells
//      if !isPaused {
//        self.gameLoop()
//      }
//    }
//  }
//  func neighbors(ofRow row: Int, andColumn column: Int) -> [Cell] {
//    let numberOfRows = cells.count
//    let numberOfColumns = cells[0].count
//    var neighboringCells = [Cell]()
//    for i in max(0, row - 1)...min(row + 1, numberOfRows - 1) {
//      for j in max(0, column - 1)...min(column + 1, numberOfColumns - 1) {
//        if !(i == row && j == column) {
//          neighboringCells.append(cells[i][j])
//        }
//      }
//    }
//    return neighboringCells
//  }
//  }
//
