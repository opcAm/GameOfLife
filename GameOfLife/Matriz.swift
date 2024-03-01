//
//  SwiftUIView.swift
//  GameOfLife
//
//  Created by Amanda Conde on 28/02/24.
//

import SwiftUI
extension ContentView {
    
    func criaMatriz () {
        var matriz: [[Int]] = []

        matriz = Array(repeating: Array(repeating: 0, count: 10), count: 10)
        
        self.matriz = matriz
    }
}

