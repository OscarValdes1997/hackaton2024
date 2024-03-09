//
//  buscador.swift
//  Hackathon
//
//  Created by CEDAM25 on 08/03/24.
//

import SwiftUI

struct buscador: View {
    @State var userEnteredText : String = ""
    
    var body: some View {
        ZStack{
            Color(hex: 0xb2e0f9)
                .ignoresSafeArea()
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                    .frame(width: 350, height: 50)
                    .padding(.bottom,650)
                    .cornerRadius(15)
                //ScrollView{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding(.leading,45)
                    TextField("Escribe algo...", text: $userEnteredText, axis: .horizontal)
                        .frame(width: 350,height: 225)
                        .foregroundColor(.black)
                    
                }.padding(.bottom,650)
                
            }
        }
    }
}

#Preview {
    buscador()
}
