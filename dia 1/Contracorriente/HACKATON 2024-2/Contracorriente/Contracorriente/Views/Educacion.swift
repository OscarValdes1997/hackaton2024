//
//  Educacion.swift
//  Contracorriente
//
//  Created by CEDAM35 on 07/03/24.
//

import SwiftUI

struct Educacion: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack {
                Text("EDUCACIÓN")
                    .bold()
                    .font(.title2)
                    .padding()
                Image(systemName: "figure.skiing.crosscountry" ).resizable().frame(width:35,height:35)
            }.padding(.bottom,10)
            
            Text("REDACCIÓN.")
            
            Spacer()
        }.frame(width: 325).padding()
    }
}

#Preview {
    Educacion()
}
