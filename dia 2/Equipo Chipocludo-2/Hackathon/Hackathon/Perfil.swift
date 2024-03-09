//
//  Perfil.swift
//  hakatlon
//
//  Created by CEDAM23 on 07/03/24.
//
import SwiftUI
struct Perfil: View {
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(hex:0x3b68b0))
                        .ignoresSafeArea()
                        .frame(height: 400)
                        .padding(.top, -200)
                        .padding(.bottom,150)
                    Text("Perfil")
                        .padding(.top,-200)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.leading,-160)
                        Spacer()
                }
                
                    
                ScrollView(.horizontal){
                    HStack(spacing:0){
                        ZStack{
                            Rectangle()
                                
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                
                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                            Image("insignia")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("Protector Natural")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                            Image("insignia 2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("Salva Vidas")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        ZStack{
                            Rectangle()
                            
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                
                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                                
                            Image("insignia 3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("Donador de Salud")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                            Image("insignia 4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("Creador de Sonrisas")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                            Image("insignia 5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("ProtecOSO")
                                .bold()
                                .foregroundColor(.white)
                            
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                            Image("insignia 6")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("Agua Para Todos")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                            Image("insignia 7")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("Educador")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex:0x3b68b0))
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .frame(width: 155,height: 270)
                                .cornerRadius(20)
                                .padding(.leading)
                                .padding(.bottom)
                            Image("insignia 8")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90,height: 90)
                                .padding(.top,-90)
                                .padding(.leading,18)
                            Text("Creador de Iniciativas")
                                .bold()
                                .foregroundColor(.white)
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.top,50)
                                
                        }
                        
                        
                    }
                }
            }
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .frame(width: 320,height: 320)
                    .padding(.top,-250)
                    .padding(.bottom,20)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    
                    
                Image("perfil")
                    .resizable()
                    .scaledToFit()
                    .padding(.top,-270)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Text("Cristiano")
                    .font(.title)
                    .bold()
                    .padding(.top,-150)
                HStack(spacing:40){
                    Text("Seguidos")
                    Text("Seguidores")
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top,-90)
                HStack(spacing:110){
                    Text("70")
                    Text("12")
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top,-60)
                
                
                    
            }
        }
    }
}
#Preview {
    Perfil()
}

