//
//  SwiftUIView.swift
//  GameOfLife
//
//  Created by Amanda Conde on 28/02/24.
//

import SwiftUI

func criaMatriz () -> [[Int]] {
    var matriz: [[Int]] = []
    var linha: [Int] = []
    
    for _ in 0...9 {
        for _ in 0...9 {
            linha.append(Int.random(in: 0...1))
        }
        
        matriz.append(linha)
        // nao deixa acumular numeros nas linhas de baixo
        linha.removeAll()
    }
    return matriz
}
