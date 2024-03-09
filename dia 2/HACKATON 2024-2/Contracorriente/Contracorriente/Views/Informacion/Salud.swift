//
//  Educacion.swift
//  Contracorriente
//
//  Created by CEDAM35 on 07/03/24.
//

import SwiftUI

struct Salud: View {
    var body: some View {
        VStack{
                HStack {
                    VStack {
                        Capsule()
                            .foregroundColor(.white)
                            .frame(width: 85,height: 45)
                            .padding(.leading,-140)
                            
                    }.padding(.top,-47)
                    
                    Image("personajessaludblanco")
                        .resizable()
                        .frame(width: 35,height: 75)
                        .padding(.top,-20)
                        .padding(.leading, -40)
                    
                    Text("Salud")
                        .frame(width: 100)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.leading, -15)
                    
                }.padding(.bottom,-20)
                    .padding(.top,30)
                    .frame(width:800,height: 150)
                .background(.pink)
                
                //1
                HStack{
                    NavigationLink(destination: Anticonceptivos()){
                        VStack{
                            Image("ICONOSSALUD1-03")
                                .resizable()
                            Text("Métodos anticonceptivos")
                                .padding(.top,-60)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .bold()
                        }//VS
                        .frame(width:175,height: 175)
                        .background(.regularMaterial)
                        .cornerRadius(30)
                    }//Nav
                    
                    NavigationLink(destination: Enfermedades()){
                        VStack{
                            Image("ICONOSALUD2-04")
                                .resizable()
                            Text("Enfermedades de transmisión sexual")
                                .padding(.top,-60)
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
                
                //2
                HStack{
                    NavigationLink(destination: Trastornos()){
                        VStack{
                            Image("manzana-05")
                                .resizable()
                                .frame(width: 180, height:175)
                                .padding(.top,-27)

                            Text("Trastornos de alimentación")
                                .padding(.top,-50)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .bold()
                        }//VS
                        .frame(width:175,height: 175)
                        .background(.regularMaterial)
                        .cornerRadius(30)
                    }//Nav
                    
                    NavigationLink(destination: Drogas()){
                        VStack{
                            Image("ICONOSSALUD5-06")
                                .resizable()
                            Text("Alcohol y Otras Drogas")
                                .padding(.top,-60)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .bold()
                        }//VS
                        .frame(width:175,height: 175)
                        .background(.regularMaterial)
                        .cornerRadius(30)
                    }//Nav
                    
                }//HS
                .padding(.top,20)
                
                //3
                VStack{
                    NavigationLink(destination: Bulllyng()){
                        VStack{
                            Image("ICONOSSALUL-08")
                                .resizable()
                                .frame(width: 220, height:190)
                                .padding(.top,-2)
                                .padding(.leading,15)

                            Text("Bullying")
                                .padding(.top,-50)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .bold()
                                .padding(.top, -15)
                        }//VS
                        .frame(width:175,height: 175)
                        .background(.regularMaterial)
                        .cornerRadius(30)
                    }//Nav
                    
                }//VS
                .padding(.top,20)
                
             //FIN
        }
            .ignoresSafeArea()
    }
}

#Preview {
    Salud()
}
