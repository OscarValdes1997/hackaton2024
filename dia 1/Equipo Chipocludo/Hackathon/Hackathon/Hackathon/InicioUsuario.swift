//
//  InicioUsuario.swift
//  Hackathon
//
//  Created by CEDAM25 on 07/03/24.
//

import SwiftUI

struct InicioUsuario: View {
    @State var user: String = ""
    @State var password: String = ""

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
                        Image("IconoApp")
                            .resizable()
                            .scaledToFit()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width:300, height: 180)
                        Text("Nombre de la APP")
                        
                            .padding()
                        Form{
                            Text("Usuario")
                            TextField("Username",text: $user)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 250, height: 5)
                                .padding(20)
                            
                            Text("Contraseña")
                            SecureField("Contraseña", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 250, height: 5)
                                .padding(20)
                        }
                        
                    NavigationLink{
                        contrasen_a()
                    } label: {
                        Text("¿Olvidaste tu contraseña?")
                            .foregroundColor(.blue)
                    }
                    NavigationLink{
                        Registro()
                    } label: {
                        Text("¿Aún no tienes una cuenta? Registrate.")
                            .foregroundColor(.blue)
                    }
                        
                    .padding(.bottom)
                    NavigationLink{
                        //
                    } label: {
                        Text("Ingresar")
                            .foregroundColor(.white)
                            .frame(width:120 , height: 40)
                            .background(Color(hex: 0x3b68b0))
                            .cornerRadius(10)
                    }
                }
                    .frame(height: 650)
            }
        }
    }
}

#Preview {
    InicioUsuario()
}
