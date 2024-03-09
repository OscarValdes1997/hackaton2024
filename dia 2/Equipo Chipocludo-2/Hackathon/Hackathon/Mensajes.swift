//
//
//
//  Mensajes.swift
//  hakatlon
//
//  Created by CEDAM23 on 07/03/24.
//
import SwiftUI
struct Mensajes: View {
    @State var text = "Escribe algo..."
    var body: some View {
        ZStack{
            Color(hex:0x48b487)
                .ignoresSafeArea()
            VStack{
                Text("Leo")
                    .font(.title)
                    .bold()
                Label("En linea", systemImage: "dot.square")
                    .foregroundColor(.green)
                Spacer()
                ScrollView(.vertical){
                    HStack{
                        Image("perfil")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height: 70)
                            .padding(.top)
                            .padding(.leading,1)
                        ZStack{
                            Rectangle()
                                .frame(width: 310,height: 100)
                                .foregroundColor(Color(hex:0xf2f2f7))
                                .cornerRadius(35)
                            Text("Hola, oye que buen evento.")
                        }
                        
                        
                        
                        
                    }
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 310,height: 100)
                                .foregroundColor(Color(hex:0xb2e0f9
                                                      ))
                                .cornerRadius(35)
                            Text("Que bueno que te gusto, suscribete!")
                        }
                        
                        Image("perfil")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height: 70)
                            .padding(.top)
                            .padding(.leading,1)
                    }
                    HStack{
                        Image("perfil")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height: 70)
                            .padding(.top)
                            .padding(.leading,1)
                        ZStack{
                            Rectangle()
                                .frame(width: 310,height: 100)
                                .foregroundColor(Color(hex:0xf2f2f7))
                                .cornerRadius(35)
                            Text("Claro, estaré al pendiente")
                        }
                        
                        
                        
                        
                        
                    }
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 310,height: 100)
                                .foregroundColor(Color(hex:0xb2e0f9
                                                      ))
                                .cornerRadius(35)
                            Text("Puedes obtener insignias !")
                        }
                        
                        Image("perfil")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height: 70)
                            .padding(.top)
                            .padding(.leading,1)
                    }
                    HStack{
                        Image("perfil")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height: 70)
                            .padding(.top)
                            .padding(.leading,1)
                        ZStack{
                            Rectangle()
                                .frame(width: 310,height: 100)
                                .foregroundColor(Color(hex:0xf2f2f7))
                                .cornerRadius(35)
                            Text("Genial, necesito mas informacion")
                        }
                        
                        
                        
                        
                        
                    }
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 310,height: 100)
                                .foregroundColor(Color(hex:0xb2e0f9
                                                      ))
                                .cornerRadius(35)
                            Text("Entra a nuestro perfil")
                        }
                        
                        Image("perfil")
                        
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height: 70)
                            .padding(.top)
                            .padding(.leading,1)
                    }
                    
                    
                    
                }
                
                ZStack{
                    
                    TextEditor(text: $text)
                        
                        .background(Color(hex:0x48b487))
                        .opacity(0.5)
                        .frame(width: 350,height: 70)
                        .cornerRadius(30)
                        .foregroundColor(.black)
                        .padding(.bottom,-10)
                   
                        
                   
                    
                    
                }
               
            }
     
        }
    }
}
#Preview {
    Mensajes()
}

