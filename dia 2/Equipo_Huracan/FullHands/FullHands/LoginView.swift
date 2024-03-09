//
//  LoginView.swift
//  FullHands
//
//  Created by CEDAM31 on 08/03/24.
//

import SwiftUI

var header: some View{
    ZStack{
        Rectangle()
            .fill(Color.orange)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 100)
        Text("Full Hands")
    }
}
struct LoginFormView_1: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        cabeza
        NavigationStack {
            ScrollView {
                TextField("Correo electronico", text: $email)
                    .keyboardType(.emailAddress)
                    .padding(.top, 16)
                Divider()
                
                SecureField("Contraseña", text: $password)
                    .padding(.top, 16)
                Divider()
                
                Button("Login") {
                    print("Email: \(email)")
                    print("Password: \(password)")
                }
                .buttonStyle(.borderedProminent)
                .padding(.top, 20)
                
                HStack{
                    Button(action: { //olvido contraseña
                        print("Forgot password")
                    }, label: {
                        Text("Forgot password?")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                            .padding(.top, 32)
                    })
                    Button(action: {//registro
                        print("Sing-up")
                    }, label: {
                        Text("Sing-up")

                            .buttonStyle(.borderedProminent)
                            .padding(.top, 32)
                    })
                }

            }
            .navigationTitle("Login Form")
            .padding(.horizontal, 32)
        }
        pie
    }
}

#Preview {
    LoginFormView_1()
}
