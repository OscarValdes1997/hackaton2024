//
//  chatbot.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import SwiftUI

struct chatbot: View {
    @State private var texto = ""
    @State var mensaje: [String] = ["Bienvenido"]
    var body: some View {
        VStack
        {
            HStack
            {
                Text("Bot Etnolic")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 26))
                    .foregroundColor(Color.orange)
            }
            ScrollView
            {
                ForEach(mensaje, id: \.self)
                {
                    mensaje in
                    if mensaje.contains("Usuario")
                    {
                        let newmensaje = mensaje.replacingOccurrences(of: "Usuario", with: "")
                        
                        HStack
                        {
                            Spacer()
                            Text(newmensaje)
                                .padding()
                                .foregroundColor(.white)
                                .background(.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal,16)
                                .padding(.bottom,10)
                        }
                    }
                    else
                    {
                        HStack
                        {
                            Text(mensaje)
                                .padding()
                                .background(.gray.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal,16)
                                .padding(.bottom,10)
                            Spacer()
                        }
                    }
                }
            }
            HStack
            {
                TextField("Escribe algo", text: $texto)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendmensaje(mensajes: texto)
                    }
                Button
                {
                    sendmensaje(mensajes: texto)

                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal,10)
            }
            .padding()
        }
    }
    func sendmensaje(mensajes: String)  {
        withAnimation
        {
            mensaje.append("Usuario" + mensajes)
            self.texto = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1)
        {
            withAnimation
            {
                mensaje.append(getbotresp(message: mensajes))
            }
        }
    }
}

#Preview {
    chatbot()
}
