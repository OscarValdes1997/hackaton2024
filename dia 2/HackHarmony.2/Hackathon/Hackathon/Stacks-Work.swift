//
//  Stacks-Work.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//

import Foundation
import WebKit
import SwiftUI

func StackWork1() -> some View {
    VStack {
        Text("Taller de carpinteria")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
        VideoView(videoURL: "https://www.youtube.com/watch?v=YO3NrDvbHww")
            .frame(height: 150)
            .padding()
        
    }
}

func StackWork2() -> some View {
    VStack {
        Text("Taller de Electricista")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
        VideoView(videoURL: "https://www.youtube.com/watch?v=zL9GBoMrFc8")
            .frame(height: 150)
            .padding()
        
    }
}

func StackWork3() -> some View {
    VStack {
        Text("Taller Capturista de Datos")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
            //.padding()
        VideoView(videoURL: "https://www.youtube.com/watch?v=GgPbGbVZDRs")
            .frame(height: 150)
            .padding()
        
    }
}



func contenedorStacksWorkTecnico() -> some View {
    VStack {
        
        StackWork1()
        StackWork2()
        StackWork3()
    }
}
