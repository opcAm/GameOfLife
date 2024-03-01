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
        ZStack{
            Color(.brown).ignoresSafeArea(.all)
            VStack {
                Text("Game of Life")
                    .font(.custom("MusticaPro-SemiBold", size: 80))
//                    .fontWeight(.heavy)
                    .foregroundStyle(Color("Color2"))
                
                Text("Amanda's Version")
                    .font(.custom("MusticaPro-SemiBold", size: 25))
//                    .fontWeight(.heavy)
                    .foregroundStyle(Color("Color2"))
                
                ForEach(matriz.indices, id: \.self ){ linha in
                    HStack{
                        ForEach(matriz.indices, id: \.self) { coluna in
                            Image(matriz[linha][coluna] == 1 ? "livro" : "kindle")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .onTapGesture {
                                    if matriz[linha][coluna] == 1{
                                        matriz[linha][coluna] = 0
                                    } else {
                                        matriz[linha][coluna] = 1
                                    }
                                }
                        }
                    }
                }
                Spacer()
                
                Button {
                    regrasGeracao()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 220, height: 60)
                            .foregroundStyle(Color.yellow)
                        Text("Aperte aqui")
                            .foregroundStyle(Color.brown)
                            .font(.custom("MusticaPro-SemiBold", size: 40))
                    }
                }
                
                Button {
                    criaMatriz()
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 220, height: 60)
                            .foregroundStyle(Color.yellow)
                        Text("Novo jogo!")
                            .foregroundStyle(Color.brown)
                            .font(.custom("MusticaPro-SemiBold", size: 40))
                    }
                }
            }
            .onAppear {
                criaMatriz()
            }
        }
    }
}

#Preview {
    ContentView()
}
