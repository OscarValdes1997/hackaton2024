//
//  inicio.swift
//  Contracorriente
//
//  Created by CEDAM35 on 07/03/24.
//

import SwiftUI

struct inicio: View {
    
    
    private let lenguajes = 
    [idioma(id:1, nombre: "Español", avatar: Image(systemName: "hand.tap")),
     idioma(id:2, nombre: "Nahuatl", avatar: Image(systemName: "hand.tap")),
     idioma(id:3, nombre: "English", avatar: Image(systemName: "hand.tap"))];
    var body: some View {
        VStack {
            
            NavigationView{
                VStack {
                    VStack{
                        Image("unaclogocolorcorregido_Mesa de trabajo 1")
                            .resizable()
                            .frame(width: 400,height: 220)
                            .foregroundColor(Color(red:0,green: 0.7,blue: 0)
)

                       
                    }
                    List(lenguajes, id: \.id){ lenguaje in
                        HStack{
                            lenguaje.avatar
                                .resizable()
                                .frame(width:30,height: 35)
                                .padding()
                            VStack{
                                Text(lenguaje.nombre)
                                    .font(.title3)
                                    .frame(width: 150)
                            }
                            NavigationLink(destination:Principal()){
                                
                            }
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    inicio()
}
