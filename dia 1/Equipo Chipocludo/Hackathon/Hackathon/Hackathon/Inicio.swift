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
                Color(.mint)
                    .ignoresSafeArea()
                
                VStack{
                    Image("perro")
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 350, height: 300)
                    Text("Nombre de la empresa o algo jaja")
                        .padding(.bottom) //corregir esto
                }
            }
        }
    }
}

#Preview {
    Inicio()
}
