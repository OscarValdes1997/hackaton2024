//
//  Tercera.swift
//  EquAI
//
//  Created by CEDAM 12 on 08/03/24.
//

import SwiftUI

struct Tercera: View {
    var body: some View {
        ZStack{
        Image("3Educativa")
            .resizable()
            .scaledToFit()
            .frame(width: 1000,height: 800)
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color(red: 87 / 255, green: 194 / 255, blue: 175 / 255), Color(red: 173 / 255, green: 77 / 255, blue: 157 / 255)]), startPoint: .leading, endPoint: .trailing)
                    .frame(width: 200,height: 50)
                    .bold()
                    .clipShape(Capsule())
                NavigationLink(){
                    Cuarta()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    Text("Siguiente")
                        .foregroundStyle(.white)
                    
                    
                }
                
            }
            .padding(.top,627)
            .padding(.leading,200)
        }

    }
}
#Preview {
    Tercera()
}
