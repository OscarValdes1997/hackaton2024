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
            
            
            ZStack{
            
                LinearGradient(gradient: Gradient(colors: [Color(red: 62 / 255, green: 12 / 255, blue: 52 / 255), Color(red: 62 / 255, green: 12 / 255, blue: 52 / 255)]), startPoint: .leading, endPoint: .trailing)
                    .frame(width: 200,height: 50)
                    .bold()
                    .clipShape(Capsule())
                
                    
                NavigationLink(){
                    Primera().navigationBarBackButtonHidden(true)

                }label: {
                    Text("Registrarse")
                        .foregroundStyle(.white)
                }
            }.padding(.top,50)
        
            
            Text("O")
            Text("Registrate con")
            
            HStack{
                
                ZStack{
                    Circle()
                        .frame(width: 70,height: 70)
                    Image("LogoFace")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50,height: 50)
                }
                ZStack{
                    Circle()
                        .frame(width: 70,height: 70)
                    Image("LogoGoogle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50,height: 50)
                }
            }
            .padding(.top,60)
            
            
            
            
            
            Spacer()
        }
    }
}
#Preview {
    Registrase()
}
