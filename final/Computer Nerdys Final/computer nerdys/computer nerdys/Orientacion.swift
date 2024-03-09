//
//  Orientacion.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import SwiftUI

struct Orientacion: View {
    @State private var selectedCorreo = "Dark"
    let correo = [" ", "contacto@correosdemexico.gob.mx", "cotizacion@correosdemexico.gob.mx", ""]
    
    @State private var selectedTelefono = "Telefonos"
    let telefono = [" ", "800 701 4500 ", "telefono3"]
    
    @State private var selectedRedes = "Redes Sociales"
    let redes = [" ","Facebook", "Instagram", "Twitter"]
    
    @State private var selectedChat = "Chat Etnoclic"
    let chat = [""]
    
    var body: some View {
        
        NavigationStack {
            Color.orange
                .ignoresSafeArea()
                .frame(width: 400,height: 40)
            Text("Servicios de apoyo")
            //foregroundColor(.orange)
            Form {
                Picker("Correos Electronicos", selection: $selectedCorreo) {
                    ForEach(correo, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.navigationLink)
                
                Picker("Telefonos", selection: $selectedTelefono) {
                    ForEach(telefono, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.navigationLink)
                
                Picker("Redes Sociales ", selection: $selectedRedes) {
                    ForEach(redes, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.navigationLink)
                NavigationLink{
                    chatbot()
                }label:{
                    Picker("Chat Etnoclic", selection: $selectedChat) {
                        ForEach(chat, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.navigationLink)
                    
                }
            }
                        .navigationTitle("Buscar Orientación")
                        
            
                }
        
        }
    }


#Preview {
    Orientacion()
}
