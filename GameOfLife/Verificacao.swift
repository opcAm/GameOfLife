//
//  Verificacao.swift
//  GameOfLife
//
//  Created by Amanda Conde on 28/02/24.
//

import SwiftUI
//função vai verificar os vizinhos vivos
extension ContentView{
    
    func verificacao (i: Int, j: Int, matriz:[[Int]]) -> Int{
        var qtdVivo = 0
        if matriz.count-1 != 0 && matriz[0].count-1 != 0{
            for minL in max (0, i - 1)...min (matriz.count-1, i, +1){
                for minC in max(0, j - 1 )...min (matriz [0].count-1, j + 1){
                    if !(i == minL || j == minC) {
                        if matriz[minL][minC] == 1{
                            qtdVivo += 1
                        }
                    }
                }
            }
        }
        return qtdVivo
    }
    
    func regrasGeracao(){
        var matrizCopia = [[]]
        
        //
        for i in 0...matriz.count - 1{
            for j in 0...matriz[0].count - 1{
                var vizinhos = verificacao(i: i, j: j, matriz: matriz)
                
                //se estiver vivo e for menor que 2 vizinhos: morre OU se vivo e for maior que 3 vizinhos: morre
                if vizinhos < 2 || vizinhos > 3 {
                    matrizCopia[i][j]
                }
                
                
                //se vivo e for 2 ou 3 vizinhos: vive
                if self.matriz[i][j] == 1 && (vizinhos == 2 || vizinhos == 3){
                    matrizCopia[i][j] = 1
                }
                
                //se morto e a quantidade de vizinhos for = a 3: vive
                if self.matriz[i][j] == 0 && vizinhos == 3{
                    matrizCopia[i][j] = 1
                }
            }
            
        }
        
    }
}
