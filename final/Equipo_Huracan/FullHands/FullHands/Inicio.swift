//
//  Inicio.swift
//  FullHands
//
//  Created by CEDAM31 on 07/03/24.
//

import SwiftUI
struct Inicio: View {
    var body: some View {
        ZStack(alignment: .top){
            VStack(alignment: .leading){
                cabeza
                log_sign
                pie
            }
        }
    }
}
var pie: some View{
    ZStack{
        Rectangle()
            .fill(Color.blue)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 100)
        Text("Copyright y Derechos reservados.")
    }
}
var rec : some View{
    Rectangle()
        .fill(Color.orange)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .frame(height: 100)
}
var cabeza: some View{
    ZStack{
        Rectangle()
            .fill(Color.orange)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 100)
        Text("Full Hands")
    }
}
var log_sign: some View{
    VStack(alignment: .center){
        @State var email: String = ""
        @State var password: String = ""
        Text("Te damos la bienvenida")
        Form {
            TextField(text: $email, prompt: Text("Correo electronico")) {
                Text("Username")
            }
            SecureField(text: $password, prompt: Text("Contraseña")) {
                Text("Password")
            }
            Button("Login"){}
        }
        HStack{
            Button("F"){}
            Button("X"){}
            Button("G"){}
        }
        HStack{
            Button("Olvide la contraseña"){}
            Button("Registrarse"){}
        }
    }
}
        	
#Preview {
    Inicio()
}
