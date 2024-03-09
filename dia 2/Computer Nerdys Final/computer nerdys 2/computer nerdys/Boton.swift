//
//  Boton.swift
//  computer nerdys
//
//  Created by CEDAM03 on 07/03/24.
//

import SwiftUI

struct Boton: View {
    var body: some View {
        ZStack
        {
            Text("Reporte enviado")
                .font(.custom("Courier", size: 30))
                .padding(.top,-200)
            
            Image(systemName: "hand.thumbsup")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    Boton()
}
