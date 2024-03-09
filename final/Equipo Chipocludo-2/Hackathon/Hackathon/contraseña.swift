//
//  contraseña.swift
//  Hackathon
//
//  Created by CEDAM25 on 07/03/24.
//

import SwiftUI

struct contrasen_a: View {
    @State var user: String = ""
    @State var password: String = ""
    @State var email: String = ""

    var body: some View {
        NavigationStack{
            ZStack{
                //0xb2e0f9 azul claro
                //0x48b487 verde
                //0x3b68b0 azul fuerte
                //0xf2f2f7 gris
                Color(hex: 0xf2f2f7)
                    .ignoresSafeArea()
                
                VStack {
                
                    Text("Restablecer contraseña")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    Form{
                        Text("Usuario")
                        TextField("Username",text: $user)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250, height: 5)
                            .padding(20)
                        
                        Text("Correo de verificación")
                        TextField("Email",text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250, height: 5)
                            .padding(20)
                        
                        Text("Nueva contraseña")
                        SecureField("Contraseña", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250, height: 5)
                            .padding(20)
                    }
            
                    NavigationLink{
                        InicioUsuario()
                    } label: {
                        Text("Confirmar")
                            .foregroundColor(.white)
                            .frame(width:120 , height: 40)
                            .background(Color(hex: 0x48b487))
                            .cornerRadius(10)
                    }
                }
                .frame(height: 600)
            }
        }
    }
}

#Preview {
    contrasen_a()
}
