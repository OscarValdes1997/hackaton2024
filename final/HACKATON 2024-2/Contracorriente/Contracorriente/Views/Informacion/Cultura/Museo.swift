//
//  Museo.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Museo: View {
    var body: some View {
        ScrollView{
            HStack {
                VStack {
                    Capsule()
                        .foregroundColor(.white)
                        .frame(width: 85,height: 45)
                        .padding(.leading,-90)
                        
                }.padding(.top,-43)
                Image("personajeculurayentretenimiento-02")
                    .resizable()
                    .frame(width: 100,height: 100)
                Text("Cultura")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundStyle(.white)
            }//HS
                .frame(width:10000,height: 100)
                .padding(.top,50)
                .background(.cyan)
            
            VStack{
                Text("Museos")
                    .font(.title)
                    .bold()
            }
            
        }.ignoresSafeArea()
    }
}

#Preview {
    Museo()
}
