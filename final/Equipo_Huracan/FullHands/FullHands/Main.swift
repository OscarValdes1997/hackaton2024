//
//  Main.swift
//  FullHands
//
//  Created by CEDAM31 on 08/03/24.
//

/*
 tipo 1: local receptor
 tipo 2: local emisor
 tipo 3: donante externo
 tipo 4: admin
 */
struct User{
    let username: String
    let password: String
    let type: Int
}
var a = User(username:"Monja",password: "123",type:1)
var b = User(username:"Pizza hot",password: "123",type:2)
var bd = [a,b]

func verificar(usuario:User)->User?{
    for persona in bd{
        if(persona.username == usuario.username &&
           persona.password == usuario.password){
            return persona
        }
    }
    return nil
}


import SwiftUI
struct LoginView: View {
    @EnvironmentObject var pageManager: PageManager
    @State private var email = ""
    @State private var password = ""
    @State private var showSignUp = false
    @State private var showPassword = false

    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                ZStack{
                    Rectangle()
                        .fill(Color.orange)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 100)
                        .padding()
                    Text("FULL HANDS")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                

                Text("TE DAMOS LA BIENVENIDA")
                    .foregroundColor(.gray)
            }
            .padding(.top, 50)
            .padding(.leading, 20)

            VStack(spacing: 20) {
                TextField("Correo electrónico", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5)

                HStack {
                    if showPassword {
                        TextField("Contraseña", text: $password)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(5)
                    } else {
                        SecureField("Contraseña", text: $password)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(5)
                    }

                    Spacer()

                    Button(action: {
                        self.showPassword.toggle()
                    }) {
                        Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.horizontal, 20)

            Button(action: {
                // Handle login logic here
                var u = User(username: email,
                                   password: password,
                                   type: 0)
                var usuario = verificar(usuario: u)
                if usuario != nil{
                    print(usuario?.username,usuario?.type)
                    var tipo = usuario?.type
                    switch tipo{
                    case 1:
                        print("monja")
                        //AcopioView()
                        pageManager.page = .acopio
                    case 2:
                        print("Pizza")
                        //AcopioView()
                        pageManager.page = .emisor
                    default:
                        print("otro")
                        pageManager.page = .logout
                    }
                }
                else{
                    print("error")
                }
            }) {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 40)
                    .background(Color.blue)
                    .cornerRadius(5)
            }
            .padding(.top, 30)

            HStack {
                Text("¿Se te olvidó tu contraseña?")
                    .foregroundColor(.gray)

                Button(action: {
                    // Handle password reset logic here
                }) {
                    Text("RECUPERAR")
                        .foregroundColor(.blue)
                }
            }
            .padding(.top, 20)

            Spacer()

            Button(action: {
                self.showSignUp = true
            }) {
                Text("SIGN-UP")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 40)
                    .background(Color.gray)
                    .cornerRadius(5)
            }
            .padding(.bottom, 30)
        }
        .sheet(isPresented: $showSignUp) {
            //SignUpView()
        }
    }
}

/*
struct Main: PreviewProvider {
    typealias Previews = <#type#>
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
 */

#Preview {
    LoginView()
}
