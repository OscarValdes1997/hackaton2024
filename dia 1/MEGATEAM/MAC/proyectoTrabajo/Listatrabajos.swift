//
//  Listatrabajos.swift
//  proyectoTrabajo
//
//  Created by CEDAM28 on 07/03/24.
//

import SwiftUI

struct Listatrabajos: View {
    var body: some View {
        var trabajos: [String: String] = ["Trabajo 1": "One",
                                          "Trabajo 2": "Two",
                                          "Trabajo 3": "Three"]
        
        //trabajos["Japan"] = "Tokyo"
        
            NavigationView {
                List{
                    ForEach(trabajos.keys.sorted(),id:\.self) { key in NavigationLink("\(key)",
                                       destination: Text("\(key): \(trabajos[key]!)"))
                    }
                }
                .navigationTitle("Menu De Trabajos")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarHidden(false)
            }
        //Accion De Boton
        Button(action:
        {
            
            print("Suscríbete a SwiftBeta")
            
        },
       label:
        {
            Text("Añadir Trabajos")
        })
        .position(x: 190, y: 180)
        .buttonStyle(.borderedProminent)
        
    }
}

#Preview {
    Listatrabajos()
}
