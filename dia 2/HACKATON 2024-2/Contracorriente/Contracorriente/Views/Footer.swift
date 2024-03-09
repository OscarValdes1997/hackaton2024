//
//  Footer.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        HStack{
            Image("unacletras-03")
                .resizable()
                .frame(width: 300, height: 150)
                .padding(.leading,-85)
            Spacer()
            Text("UNAC_Contacto@ong.org")
                .scaleEffect(1)
                .padding(.leading,-210)
                .foregroundColor(.black)
            
        }.padding(.bottom,-25)
            .background(.regularMaterial)
    }
}

#Preview {
    Footer()
}
