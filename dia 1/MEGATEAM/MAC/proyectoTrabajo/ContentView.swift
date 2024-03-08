//
//  SwiftUIView.swift
//  proyectoTrabajo
//
//  Created by CEDAM28 on 07/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            NavigationLink("Seleccione Para Continuar") {
                InicioSesion()
                    .navigationBarBackButtonHidden(true)
            }
        }
        
        Text("IDENTIKX")
    }
}

#Preview {
    ContentView()
}
