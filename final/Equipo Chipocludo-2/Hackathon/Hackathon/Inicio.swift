//
//  Inicio.swift
//  Hackathon
//
//  Created by CEDAM25 on 07/03/24.
//

import SwiftUI

struct Inicio: View {
    var body: some View {
        NavigationStack{
            ZStack{
                //0xb2e0f9 azul claro
                //0x48b487 verde
                //0x3b68b0 azul fuerte
                //0xf2f2f7 gris
                Color(hex: 0xb2e0f9)
                    .ignoresSafeArea()
                
                VStack{
                    Image("IconoApp")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 200)
                        .padding(.bottom,40)
                    Text("WellGift")
                        .font(.title)
                        .bold()
                        .padding(.bottom,75)
                        .foregroundColor(Color(hex: 0x3b68b0))
                }
            }
        }
    }
}

#Preview {
    Inicio()
}
