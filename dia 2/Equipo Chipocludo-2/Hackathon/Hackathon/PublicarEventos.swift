//
//  PublicarEventos.swift
//  Hackathon
//
//  Created by CEDAM25 on 07/03/24.
//

import SwiftUI

struct PublicarEventos: View {
    @State var userEnteredText : String = ""
    @State var userEnteredText1 : String = ""
    @State var userEnteredText2 : String = ""
    @State var userEnteredText3 : String = ""

    @State private var showSheet: Bool = false
    @State private var showSheet2: Bool = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                //0xb2e0f9
                //0x48b487
                //0x3b68b0
                Color(hex: 0xb2e0f9)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Image("persona")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(.mint)
                            .frame(width: 75,height: 75)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            Text("Nombre de Usuario")
                                .font(.title2)
                            Text("Evento Nuevo")
                        }
                        
                    }
                    .padding(.trailing,65)
                    
                    ScrollView{
                        Text("Escribe un título ")
                            .padding(.trailing,200)
                            .foregroundColor(Color(hex: 0x3b68b0))
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex: 0xffffff))
                                .frame(width: 350,height: 50)
                                .cornerRadius(5)
                            
                            TextField("Escribe algo para comenzar...", text: $userEnteredText2, axis: .horizontal)
                                .frame(width: 350,height: 50)
                                .padding(.leading,40)
                        }
                        
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex: 0xffffff))
                                .frame(width: 350,height: 125)
                                .cornerRadius(5)
                            
                            TextField("Agrega una descripción...", text: $userEnteredText, axis: .horizontal)
                                .frame(width: 350,height: 125)
                                .padding(.leading,40)
                        }
                        
                            Button("Agregar una foto *") {
                                self.showSheet = true
                            }
                            .sheet(isPresented: $showSheet) {
                                Text("Elige una Foto")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .padding(.top)
                                    .presentationDetents([.medium, .large])
                                    .padding(15)
                                
                                HStack{
                                    Image("perro")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                        .padding(.trailing)
                                    Image("arboles")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                }
                                HStack{
                                    Image("persona")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                        .padding(.trailing)
                                    Image("perro")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                }
                                HStack{
                                    Image("perro")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                        .padding(.trailing)
                                    Image("arboles")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                }
                                HStack{
                                    Image("persona")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                        .padding(.trailing)
                                    Image("perro")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150,height: 150)
                                        .clipShape(Rectangle())
                                }
                                
                            }
                            .foregroundColor(Color(hex: 0x3b68b0))
                            .frame(width: 350,height: 30)
                            .background(Color(hex: 0xffffff))
                            .cornerRadius(5)
                            
                            Image("perro")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350,height: 300)
                                .cornerRadius(0)
                                         
                        // Ubicacion jaja
                        Button("Agregar Ubicación *") {
                            self.showSheet2 = true
                        }
                        .sheet(isPresented: $showSheet2) {
                            HStack{
                                Image("mapa")
                                    .resizable()
                                    .scaledToFill()
                                    .clipShape(Rectangle())
                            }
                            
                        }
                        .foregroundColor(Color(hex: 0x3b68b0))
                        .frame(width: 350,height: 30)
                        .background(Color(hex: 0xffffff))
                        .cornerRadius(5)
                        .padding(.bottom,10)
                        
                        Text("Agrega algunos Hashtag para llegar a las personas adecuadas")
                            .padding(.trailing,20)
                            .foregroundColor(Color(hex: 0x3b68b0))
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex: 0xffffff))
                                .frame(width: 350,height: 50)
                                .cornerRadius(5)
                            
                            TextField("#WellGift...", text: $userEnteredText1, axis: .horizontal)
                                .frame(width: 350,height: 50)
                                .padding(.leading,40)
                                .foregroundColor(.blue)
                        }
                        
                        Text("Agrega el enlace de tu formulario para registrarse")
                            .padding(.trailing,40)
                            .foregroundColor(Color(hex: 0x3b68b0))
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color(hex: 0xffffff))
                                .frame(width: 350,height: 50)
                                .cornerRadius(5)
                            
                            TextField("Agrega el enlace", text: $userEnteredText3, axis: .horizontal)
                                .frame(width: 350,height: 50)
                                .padding(.leading,40)
                                .foregroundColor(.purple)
                        }
                        
                        
                        NavigationLink{
                            //SwiftUIView()
                        } label: {
                            Text("Publicar")
                                .foregroundColor(.white)
                                .frame(width:120 , height: 40)
                                .background(Color(hex: 0x48b487))
                                .cornerRadius(10)
                        }
                        .padding(.top,25)
                    }
                }
            }
        }
    }
}

#Preview {
    PublicarEventos()
}
