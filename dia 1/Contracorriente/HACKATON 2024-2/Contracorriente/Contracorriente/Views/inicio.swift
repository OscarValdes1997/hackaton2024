//
//  inicio.swift
//  Contracorriente
//
//  Created by CEDAM35 on 07/03/24.
//

import SwiftUI

struct inicio: View {
    
    
    private let lenguajes = [idioma(id:1, nombre: "Español", avatar: Image(systemName: "hand.tap")),idioma(id:2, nombre: "Nahuatl", avatar: Image(systemName: "hand.tap")),idioma(id:3, nombre: "Inglés", avatar: Image(systemName: "hand.tap"))];
    var body: some View {
        VStack {
            
            NavigationView{
                VStack {
                    VStack{
                        Image("unac_imagencorporativa")
                            .resizable()
                            .frame(width: 200,height: 220)
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
                                Text("Hablo \(lenguaje.nombre)")
                                    .font(.title3)
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
