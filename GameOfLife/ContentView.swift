//
//  ContentView.swift
//  GameOfLife
//
//  Created by Amanda Conde on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var matriz: [[Int]] = []
    
    
    var body: some View {
        VStack {
            ForEach(matriz.indices, id: \.self) {i in
                HStack{
                    ForEach(matriz.indices, id: \.self){ j in
                        Rectangle()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(matriz[i][j] == 1 ? Color.yellow : Color.brown)
                    }
                }
            }
            
            Button{
                matriz = criaMatriz()
                print(matriz)
                for i in 0...matriz.count - 1{
                    for j in 0...matriz.count - 1{
                        print(matriz[i][j], terminator: "  ")
                    }
                    print("\n")
                }
                
            } label: {
                Text("oi")
            }
        }.onAppear {
            matriz = criaMatriz()
        }
    }
}

#Preview {
    ContentView()
}
