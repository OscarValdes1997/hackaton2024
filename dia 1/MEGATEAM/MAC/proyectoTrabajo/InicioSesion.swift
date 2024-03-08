//
//  ContentView.swift
//  proyectoTrabajo
//
//  Created by CEDAM28 on 07/03/24.
//

import SwiftUI

struct InicioSesion: View {
    @State private var user: String = ""
    @State private var pass: String = ""
    let FieldColor: Color = Color(red: 0.8, green: 0.8, blue: 0.8)
    let TextColor: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .position(x: 175, y: 150)
                .foregroundStyle(.tint)
            Text("Iniciar Sesion")
                .foregroundStyle(.black)
                .position(x: 155, y: 150)
                .padding()
        }
        .padding()
        
        TextField("Ingrese Nombre", text: $user)
            .padding()
            .position(x: 20, y: 160)
            .foregroundColor(TextColor)
            .frame(width: 200, height: 100)
        
        //Campo Para Ingresar Password
        SecureField("Ingrese Contraseña", text: $pass)
            .padding()
            .position(x: 20, y: 120)
            .foregroundColor(TextColor)
            .frame(width: 200, height: 100)
        
        //Accion De Boton
        Button(action:
        {
            
        },
       label:
        {
            Text("Acceder")
        })
        .position(x: 190, y: 80)
        
        
        //Accion De Boton
        Button(action:
        {
            
        },
       label:
        {
            Text("Registro")
        })
        .position(x: 190, y: -20)
    }
}

#Preview {
    InicioSesion()
}
