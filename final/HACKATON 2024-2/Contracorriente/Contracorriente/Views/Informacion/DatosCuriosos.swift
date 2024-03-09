//
//  DatosCuriosos.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct DatosCuriosos: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Capsule()
                        .foregroundColor(.white)
                        .frame(width: 85,height: 45)
                        .padding(.leading,-55)
                        
                }.padding(.top,-43)
                Image("personajesrecursos-03")
                    .resizable()
                    .frame(width: 125,height: 100)
                    .padding(.leading,-50)
                Text("Datos Curiosos")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.leading,-45)
            }//HS
                .frame(width:10000,height: 100)
                .padding(.top,50)
            .background(.green)
            
            Spacer()
            VStack {
                Text("Sabias que… ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding()
                    .foregroundColor(.green)
                Text("'La gente es más creativa en la ducha. Cuando nos duchamos con agua caliente, experimentamos un mayor flujo de dopamina que nos hace más creativos.'")
                    .padding()
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    
                
            }.padding()
                .padding(.bottom,130)
            Spacer()
                
        }//HS
        .ignoresSafeArea()
    }
}

#Preview {
    DatosCuriosos()
}
