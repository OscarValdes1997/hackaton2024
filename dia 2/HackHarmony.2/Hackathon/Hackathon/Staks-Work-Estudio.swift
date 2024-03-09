//
//  Staks-Work-Estudio.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//

import Foundation
import WebKit
import SwiftUI


func StackEstudio1() -> some View {
    VStack {
        Text("Nivel para Todos")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
        VideoView(videoURL: "https://www.youtube.com/watch?v=YO3NrDvbHww")
            .frame(height: 150)
            .padding()
        
    }
}

func StackEstudio2() -> some View {
    VStack {
        Text("Nivel Priimaria")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
        VideoView(videoURL: "https://www.youtube.com/watch?v=YO3NrDvbHww")
            .frame(height: 150)
            .padding()
        
    }
}

func StackEstudio3() -> some View {
    VStack {
        Text("Nivel Secundaria")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
        VideoView(videoURL: "https://www.youtube.com/watch?v=zL9GBoMrFc8")
            .frame(height: 150)
            .padding()
        
    }
}



func contenedorStacksWorkEstudio() -> some View {
    VStack {
        
        StackEstudio1()
        StackEstudio2()
        
    }
}

