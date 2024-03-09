//
//  Cultura.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Cultura: View {
    var body: some View {
        ScrollView {
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
            
            //1
            VStack{
                NavigationLink(destination: Museo()){
                    VStack{
                        Image("iconcos museos_Mesa de trabajo 1")
                            .resizable()
                            .frame(height: 145)
                            .padding(.top,-15)
                            .padding(.leading,10)
                        Text("Museos")
                            .padding(.top,-35)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .bold()
                    }//VS
                    .frame(width:175,height: 175)
                    .background(.regularMaterial)
                    .cornerRadius(30)
                }//Nav
                .padding(.bottom,40)
                
                NavigationLink(destination: Cursos()){
                    VStack{
                        Image("iconotalleres-02")
                            .resizable()
                        Text("Cursos y talleres")
                            .padding(.top,-50)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .bold()
                    }//VS
                    .frame(width:175,height: 175)
                    .background(.regularMaterial)
                    .cornerRadius(30)
                }//Nav
                
            }//HS
            .padding(.top,50)
            
        }//SC
        .ignoresSafeArea()
    }
}

#Preview {
    Cultura()
}
