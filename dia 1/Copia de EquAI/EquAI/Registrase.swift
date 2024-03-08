//
//  Registrase.swift
//  EquAI
//
//  Created by CEDAM 12 on 07/03/24.
//

import Foundation
import SwiftUI



struct Registrase: View {
    
    @State var username: String = ""
    @State var correo: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack{
            Text("Crear una cuenta")
                .font(.title)
                .padding(.top,50)
            TextField("Nombre del usuario", text: $username)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                            .padding(8)
                            .font(.headline)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(6)
                            .padding(.horizontal, 60)
                            .padding(.top, 90)
                            .onChange(of: username, perform: { value in
                                print("New value \(value)")
                            })
            TextField("Corroe", text: $correo)
                            .keyboardType(.default)
                            .disableAutocorrection(true)
                            .padding(8)
                            .font(.headline)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(6)
                            .padding(.horizontal, 60)
                            .padding(.top, 20)
                            .onChange(of: correo, perform: { value in
                                print("New value \(value)")
                            })
            TextField("Contraseña", text: $password)
                            .keyboardType(.default)
                            .disableAutocorrection(true)
                            .padding(8)
                            .font(.headline)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(6)
                            .padding(.horizontal, 60)
                            .padding(.top, 20)
                            .onChange(of: password, perform: { value in
                                print("New value \(value)")
                            })
            
            
            Button("Registrase") {
                print("Button pressed!")
            }
            .buttonStyle(GrowingButton())
            .padding(.top,20)
            
            Text("O")
            Text("Registrate con")
            
            HStack{
                Circle()
                    .frame(width: 50,height: 50)
                Circle()
                    .frame(width: 50,height: 50)
            }
            .padding(.top,60)
            
            
            
            
            
            Spacer()
        }
    }
}
#Preview {
    Registrase()
}
