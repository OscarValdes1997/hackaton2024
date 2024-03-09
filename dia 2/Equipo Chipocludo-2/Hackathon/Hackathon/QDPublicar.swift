//
//  QDPublicar.swift
//  Hackathon
//
//  Created by CEDAM25 on 08/03/24.
//

import SwiftUI

struct QDPublicar: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    //0xb2e0f9 azul claro
                    //0x48b487 verde
                    //0x3b68b0 azul fuerte
                    //0xf2f2f7 gris
                    Image("wellgift")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250,height: 250)
                        .padding(.bottom, 25)
                    Text("¿Que deseas hacer?")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    NavigationLink{
                        PublicarEventos()
                    } label: {
                        Text("Publicar un Nuevo Evento")
                            .foregroundColor(.white)
                            .frame(width:320 , height: 45)
                            .background(Color(hex: 0x48b487))
                            .cornerRadius(10)
                    }
                    
                    NavigationLink{
                        PublicarTexto()
                    } label: {
                        Text("Nueva Publicación")
                            .foregroundColor(.white)
                            .frame(width:320 , height: 45)
                            .background(Color(hex: 0x48b487))
                            .cornerRadius(10)
                    }
                    
                    NavigationLink{
                        //
                    } label: {
                        Text("Nueva Discusión en el Foro")
                            .foregroundColor(.white)
                            .frame(width:320 , height: 45)
                            .background(Color(hex: 0x48b487))
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    QDPublicar()
}
