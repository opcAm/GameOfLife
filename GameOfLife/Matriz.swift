//
//  SwiftUIView.swift
//  GameOfLife
//
//  Created by Amanda Conde on 28/02/24.
//

import SwiftUI

func criaMatriz (){
    var matriz: [[Int]] = []
    var linha: [Int] = []
    
    for i in 0...9 {
        for j in 0...9 {
            linha.append(Int.random(in: 0...1))
        }
        
        matriz.append(linha)
        // nao deixa acumular numeros nas linhas de baixo
        linha.removeAll()
    }
}
