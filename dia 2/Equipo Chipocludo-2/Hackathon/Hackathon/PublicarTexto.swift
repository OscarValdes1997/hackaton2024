//
//  PublicarTexto.swift
//  Hackathon
//
//  Created by CEDAM25 on 08/03/24.
//

import SwiftUI

struct PublicarTexto: View {
    @State var userEnteredText : String = ""
    @State var userEnteredText1 : String = ""
    
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
                            Text("Nueva Publicación")
                        }
                    }
                    .padding(.trailing,65)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color(hex: 0xffffff))
                            .frame(width: 350,height: 225)
                            .cornerRadius(5)
                        
                        TextField("Agrega una descripción...", text: $userEnteredText, axis: .horizontal)
                            .frame(width: 350,height: 225)
                            .padding(.leading,40)
                    }
                    .padding(.bottom,20)
                    
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

#Preview {
    PublicarTexto()
}
