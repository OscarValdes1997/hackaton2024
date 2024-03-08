//
//  Usuario.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct Usuario: View {
    @State private var email: String = ""
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea(.all)
            VStack{
                Text("Inicia Sesión")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                SocalLoginButton( text: Text("Inicia con Apple"))
                SocalLoginButton( text: Text("Inicia con Google").foregroundColor(.white))
                    .padding(.vertical)
                Text("o ingresa tu email")
                    .foregroundColor(.white)
                TextField("Ingresa tu correo electrónico", text: $email)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .cornerRadius(50.0)
                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                    .padding(.vertical)
                
                PrimaryButton(title: "Email me a singup link")
            }
            Spacer()
            Divider()
            Spacer()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previous: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton : View{
    var title: String
    var body: some View{
        Text (title)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding()
            .background(Color(.gray))
            .cornerRadius(50)
    }
}

struct SocalLoginButton: View {
//    var image : Image
    var text: Text
    var body: some View{
        HStack{
//            image
//                .padding(.horizontal)
//            Spacer()
//            text                .font(.title2)
//            Spacer()
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color.gray)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
    }
}
#Preview {
    Usuario()
}
