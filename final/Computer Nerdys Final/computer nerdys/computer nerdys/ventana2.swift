//
//  ventana2.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import SwiftUI

struct ventana2: View {
    @State var choiceMade = "Estados"
    var body: some View {
        NavigationStack{
            
            
            ScrollView{
                VStack{
                    Image("Group 8")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 200)
                        .padding(.top,-80)
                    Image("rep")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                        .padding(.top,-80)
                    
                    Text("¿De dónde eres?")
                        .font(.custom("Montserrat", size: 36))
                    
                    
                    Menu{
                        ScrollView{
                            Button(action: {
                                choiceMade = "Aguascalientes"
                            }, label:{
                                Text("Aguascalientes")
                            })
                            Button(action: {
                                choiceMade = "Baja California"
                            }, label:{
                                Text("Baja California")
                            })
                            Button(action: {
                                choiceMade = "Baja California Sur"
                            }, label:{
                                Text("Baja California Sur")
                            })
                            Button(action: {
                                choiceMade = "Campeche"
                            }, label:{
                                Text("Campeche")
                            })
                            Button(action: {
                                choiceMade = "Chiapas"
                            }, label:{
                                Text("Chiapas")
                            })
                            Button(action: {
                                choiceMade = "Chihuahua"
                            }, label:{
                                Text("Chihuahua")
                            })
                            Button(action: {
                                choiceMade = "Coahuila"
                            }, label:{
                                Text("Coahuila")
                            })
                            Button(action: {
                                choiceMade = "Colima"
                            }, label:{
                                Text("Colima")
                            })
                            Button(action: {
                                choiceMade = "Ciudad de México"
                            }, label:{
                                Text("Ciudad de México")
                            })
                            Button(action: {
                                choiceMade = "Durango"
                            }, label:{
                                Text("Durango")
                            })
                            Button(action: {
                                choiceMade = "Estado de México"
                            }, label:{
                                Text("Estado de México")
                            })
                            Button(action: {
                                choiceMade = "Guanajuato"
                            }, label:{
                                Text("Guanajuato")
                            })
                            Button(action: {
                                choiceMade = "Guerrero"
                            }, label:{
                                Text("Guerrero")
                            })
                            Button(action: {
                                choiceMade = "Hidalgo"
                            }, label:{
                                Text("Hidalgo")
                            })
                            Button(action: {
                                choiceMade = "Jalisco"
                            }, label:{
                                Text("Jalisco")
                            })
                            Button(action: {
                                choiceMade = "Michoacán"
                            }, label:{
                                Text("Michoacán")
                            })
                            Button(action: {
                                choiceMade = "Morelos"
                            }, label:{
                                Text("Morelos")
                            })
                            Button(action: {
                                choiceMade = "Nayarit"
                            }, label:{
                                Text("Nayarit")
                            })
                            Button(action: {
                                choiceMade = "Nuevo León"
                            }, label:{
                                Text("Nuevo León")
                            })
                        }
                        
                    }label:{
                        Label(
                            title:{Text("\(choiceMade)")
                                    .foregroundColor(.black)
                                    .frame(width: 150, height: 50)
                                //.background(.gray)
                                //.foregroundStyle(Color(hex: 0x0d98ba))
                                .cornerRadius(5)},
                            icon: {Image(systemName:"yieldsign.fill")
                            }
                        )
                    }
                    
                    
                    Text("Problematicas")
                        .font(.custom("Montserrat", size: 30))
                    
                    HStack{
                        VStack{
                            NavigationLink{
                                //ventana()
                            } label:{
                                Button(action: {
                                    print("Salud")
                                }, label: {
                                    Image("hospital 1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 85, height: 200)
                                })
                            }
                            Text("Salud")
                                .font(.custom("Montserrat", size: 20))
                                .offset(x: 1, y:-30)
                            
                        }
                        VStack{
                            NavigationLink{
                                //ventana()
                            } label:{
                                Button(action: {
                                    print("Educación")
                                }, label: {
                                    Image("edu")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 200)
                                })
                            }
                            Text("Educación")
                                .font(.custom("Montserrat", size: 20))
                                .offset(x: 1, y:-30)
                        }
                        VStack{
                            NavigationLink{
                                //ventana()
                            } label:{
                                Button(action: {
                                    print("Trabajo")
                                }, label: {
                                    Image("group 1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 200)
                                })
                            }
                            Text("Trabajo")
                                .font(.custom("Montserrat", size: 20))
                                .offset(x: 1, y:-30)
                            
                        }
                    }
                    HStack{
                        VStack{
                            NavigationLink{
                                //ventana()
                            } label:{
                                Button(action: {
                                    print("Discriminación")
                                }, label: {
                                    Image("discrimi")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 200)
                                })
                            }
                            Text("Discriminación")
                                .font(.custom("Montserrat", size: 20))
                                .offset(x: 1, y:-30)
                            
                        }
                        VStack{
                            NavigationLink{
                                //ventana()
                            } label:{
                                Button(action: {
                                    print("Genero")
                                }, label: {
                                    Image("gene")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 200)
                                })
                            }
                            Text("Genero")
                                .font(.custom("Montserrat", size: 20))
                                .offset(x: 1, y:-30)
                            
                        }
                        VStack{
                            NavigationLink{
                                //ventana()
                            } label:{
                                
                                Button(action: {
                                    print("Recursos")
                                }, label: {
                                    Image("recursos")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 120, height: 200)
                                })
                            }
                            Text("Recursos")
                                .font(.custom("Montserrat", size: 20))
                                .offset(x: 1, y:-30)
                            
                        }
                    }
                    
                    
                }
                NavigationLink{
                    ventana3()
                } label:{
                    Text("Siguiente")
                        .font(.custom("Montserrat", size: 20))
                        .foregroundColor(.white)
                        .frame(width: 250, height: 60)
                        .background(.orange)
                        .cornerRadius(100)
                }
                
            }
        }
    }
}



#Preview {
    ventana2()
}
