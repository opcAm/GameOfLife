////
////  SwiftUIView.swift
////  GameOfLife
////
////  Created by Amanda Conde on 27/02/24.
////
//
//import SwiftUI
//
//struct CellView: View {
//    @Binding var cell: Cell
//    
//    var color: Color {
//        cell.isAlive ? Color.green : Color.black
//    }
//    
//    var body: some View {
//        Rectangle()
//            .foregroundStyle(Color.black)
//            .onTapGesture {
//                cell.isAlive.toggle()
//            }
//    }
//}
//struct Cell {
//    var isAlive: Bool = false
//}
////#Preview {
////  CellView()
////}
