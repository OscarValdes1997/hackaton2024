//
//  Recursos.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Recursos: View {
    var body: some View {
        ScrollView {
            HStack {
                VStack {
                    Capsule()
                        .foregroundColor(.white)
                        .frame(width: 85,height: 45)
                        .padding(.leading,-65)
                        
                }.padding(.top,-43)
                Image("recursos-02")
                    .resizable()
                    .frame(width: 125,height: 100)
                Text("Recursos")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.leading,-30)
            }//HS
                .frame(width:10000,height: 100)
                .padding(.top,50)
                .background(.orange)
            
            //1
            VStack{
                Image("qr-code (1)")
                    .resizable()
                    .frame(width:200, height: 200)
                Text("El vendedor de humo")
                    .bold()
                    .padding(.bottom,25)
                
                
                Image("qr-code (2)")
                    .resizable()
                    .frame(width:200, height: 200)
                Text("Academia Play")
                    .bold()
                    .padding(.bottom,25)
                
                Image("qr-code")
                    .resizable()
                    .frame(width:200, height: 200)
                Text("Relajación")
                    .bold()
                    .padding(.bottom,25)
                
                
            }//VS
            .padding(.top,50)
            
        }//SC
        .ignoresSafeArea()
    }
}

#Preview {
    Recursos()
}
