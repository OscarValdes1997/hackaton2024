//
//  Principal.swift
//  Contracorriente
//
//  Created by CEDAM35 on 07/03/24.
//

import SwiftUI

struct Principal: View {
    var body: some View {
      //  NavigationView {
            ScrollView{
                VStack{
                    VStack {
                        Image("unaclogocolor-02")
                            .resizable()
                            .frame(width: 300,height: 175)
                            .padding(.top,50)
                        
                        Text("Infórmate")
                            .font(.title)
                            .bold()
                            .padding(.top,-50)
                            .padding()
                        
                    }.frame(width: 400).background(.ultraThickMaterial)
                    
                    VStack(alignment:.center){
            
                        NavigationLink(destination: Salud()){
                            HStack {
                                Image("personajessaludblanco")
                                    .resizable()
                                    .frame(width: 25,height: 60)
                                    .padding(.top,10)
                                    .padding(.leading,20)
                                
                                Text("Salud")
                                    .padding(.leading,-60)
                                    .frame(width: 205)
                                    .font(.title2)
                                    .bold()
                            }
                        }.padding(.bottom,10)
                            .padding(.leading,10)
                            .padding(.top,10)
                            .background(.pink)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                            
                        
                        
                        NavigationLink(destination:Cultura()){
                            HStack {
                                Image("personajeculurayentretenimiento-02")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .padding(.top,10)
                                
                                Text("Cultura")
                                    .padding(.leading,-90)
                                    .frame(width: 175)
                                    .font(.title2)
                                    .bold()
                            }
                        }.padding(-10)
                            .padding(.leading,10)
                            .background(.cyan)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                        
                        
                        NavigationLink(destination:Recursos()){
                            HStack(alignment:.center) {
                                Image("recursos-02")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .padding(.top,10)
                                    .padding(.leading,20)
                                
                                Text("Recursos")
                                    .padding(.leading,-100)
                                    .frame(width: 175)
                                    .font(.title2)
                                    .bold()
                            }
                        }.padding(-10)
                            .padding(.leading,-10)
                            .background(.orange)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                        
                        NavigationLink(destination:DatosCuriosos()){
                            HStack {
                                Image("personajesrecursos-03")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .padding(.top,10)
                                
                                Text("Datos curiosos")
                                    .padding(.leading,-80)
                                    .frame(width: 175)
                                    .font(.title2)
                                    .bold()
                            }
                        }
                        .padding(-10)
                            .background(.green)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                            .padding()
                        
                        
                    }.frame(width: 325).padding()
                    Spacer()
                    
                    Footer()
                        
                    
                }
                
            }.ignoresSafeArea()
      //  }
    }
}

#Preview {
    Principal()
}

