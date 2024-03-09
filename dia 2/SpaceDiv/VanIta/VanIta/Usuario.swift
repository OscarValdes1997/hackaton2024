//
//  Usuario.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct Usuario: View {
    @State var isLoginMode = false
    @State  var email = ""
    @State  var password = ""
    var body: some View {
        NavigationView{
            ZStack {
                Image("Gradiente")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                ScrollView{
                    VStack(spacing: 16){
                        Picker(selection: $isLoginMode, label: Text ("Picker Here")){
                            Text("Iniciar Sesión")
                                .tag(true)
                            Text("Crea una cuenta")
                                .tag(false)
                        }.pickerStyle(SegmentedPickerStyle())
                        if !isLoginMode{
                            Button{
                                
                            }label:{
                                Image(systemName: "person.fill")
                                    .font(.system(size: 64))
                                    .padding()
                            }
                        }
                        Group{
                            TextField("Correo Electrónico", text: $email)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                            SecureField("Contraseña", text: $password)
                        }
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .cornerRadius(40.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 50, x: 0, y: 16)
                        
                        
                        Button{
                            
                        }label:{
                            HStack{
                                Spacer()
                                Text(isLoginMode ? "Iniciar Sesión" : "Crear Cuenta")
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                Spacer()
                            }
                            .padding()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.blue)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                        }
                        
                    }
                    .padding()
                }
                .navigationTitle(isLoginMode ? "Iniciar Sesión" : "Crear una Cuenta")
            }
            
        }
        
    }
    
}
struct ContentView_Previous: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    Usuario()
}
