//
//  Principal.swift
//  Contracorriente
//
//  Created by CEDAM35 on 07/03/24.
//

import SwiftUI

struct Principal: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    VStack {
                        Image("unaclogoo-02")
                            .resizable()
                            .frame(width: 300,height: 175)
                            .padding(.top,50)
                        
                        Text("Informate!")
                            .font(.title)
                            .bold()
                            .padding(.top,-50)
                            .padding()
                        
                    }.frame(width: 400).background(.ultraThickMaterial)
                    
                    VStack(alignment:.center){
            
                        NavigationLink(destination:Educacion()){
                            Text("Educación")
                                .frame(width: 175)
                                .bold()
                                .font(.title2)
                        }.padding()
                            .background(.pink)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                            
                        
                        
                        NavigationLink(destination:Educacion()){
                            Text("Cultura")
                                .frame(width: 175)
                                .bold()
                                .font(.title2)
                        }.padding()
                            .background(.cyan)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                        
                        
                        NavigationLink(destination:Educacion()){
                            Text("Recursos")
                                .frame(width: 175)
                                .bold()
                                .font(.title2)
                        }.padding()
                            .background(.orange)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                        
                        NavigationLink(destination:Educacion()){
                            Text("Datos curiosos")
                                .frame(width: 175)
                                .bold()
                                .font(.title2)
                        }.padding()
                            .background(.green)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                        
                        
                    }.frame(width: 325).padding()
                    Spacer()
                    
                    HStack{
                        Image("unacletras-03")
                            .resizable()
                            .frame(width: 300, height: 150)
                        Spacer()
                        Text("HOLA")
                        Spacer()
                        
                    }
                        
                    
                }
                
            }.ignoresSafeArea()
        }
    }
}

#Preview {
    Principal()
}

