//
//  PublicarEventos.swift
//  Hackathon
//
//  Created by CEDAM25 on 07/03/24.
//

import SwiftUI

struct PublicarEventos: View {
    @State var userEnteredText : String = ""
    var body: some View {
        NavigationStack{
                
            ZStack{
                VStack{
                    ScrollView{
                        Text("Publicar un nuevo evento")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        ZStack{
                            Rectangle()
                                .foregroundColor(.mint)
                                .frame(width: 350,height: 125)
                                .cornerRadius(35)
                            
                            TextField("Enter some text here", text: $userEnteredText, axis: .horizontal)
                                .frame(width: 350,height: 125)
                                .padding(.leading,40)
                            
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(.mint)
                                .frame(width: 350,height: 90)
                                .cornerRadius(35)
                            
                            TextField("Insgresar #", text: $userEnteredText, axis: .horizontal)
                                .frame(width: 350,height: 125)
                                .padding(.leading,40)
                        }
                        Image("perro")
                            .resizable()
                            .scaledToFill()
                            .foregroundColor(.mint)
                            .frame(width: 350,height: 300)
                            .cornerRadius(35)
                        
                        NavigationLink{
                            //que te direccione al feed
                        } label: {
                            Text("Publicar")
                                .foregroundColor(.white)
                                .frame(width:120 , height: 40)
                                .background(.gray)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PublicarEventos()
}
