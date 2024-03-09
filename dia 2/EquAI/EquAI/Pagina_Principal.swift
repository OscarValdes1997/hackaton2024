//
//  Pagina_Principal.swift
//  EquAI
//
//  Created by CEDAM 12 on 07/03/24.
//
import SwiftUI
import Foundation


struct Pagina_Principal: View {
    
    @State var diario: String = ""
    
    var body: some View {
        NavigationStack{
            
            ScrollView{
                VStack{
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 235 / 255, green: 235 / 255, blue: 235 / 255), Color(red: 235 / 255, green: 235 / 255, blue: 235 / 255)]), startPoint: .leading, endPoint: .trailing)
                            .frame(width: 370,height: 50)
                            .bold()
                            .clipShape(Capsule())
                        NavigationLink(){
                            Chatbot()
            
                        }label: {
                            HStack{
                                Image(systemName: "list.bullet")
                                    .foregroundColor(.black)
                                    .padding(.trailing,20)
                                    .font(.system(size: 30))
                                
                                Text("EQU AI").font(Font.custom("MontserratItalic-Regular", size: 20))
                                    .foregroundStyle(.indigo)
                                    .padding(.trailing,170)
                                Image(systemName: "person.circle")
                                    .foregroundColor(.black)
                                    .font(.system(size: 30))
                                
                            }
                            
                        }.navigationBarBackButtonHidden(true)
                        
                    }
                    Text("¡Bienvenido!")
                        .font(Font.custom("MontserratItalic-Regular", size: 35))
                        .foregroundStyle(.black)
                        .padding()
     
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 157 / 255, green: 37 / 255, blue: 139 / 255), Color(red: 157 / 255, green: 37 / 255, blue: 139 / 255)]), startPoint: .leading, endPoint: .trailing)
                            .frame(width: 370,height: 120)
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        LinearGradient(gradient: Gradient(colors: [Color(red: 255 / 255, green:  255 / 255, blue: 255 / 255), Color(red: 255 / 255, green:  255 / 255, blue: 255 / 255)]), startPoint: .leading, endPoint: .trailing)
                            .frame(width: 320,height: 80)
                            .bold()
                            .clipShape(Capsule())
                        LinearGradient(gradient: Gradient(colors: [Color(red: 62 / 255, green: 12 / 255, blue: 52 / 255), Color(red: 62 / 255, green: 12 / 255, blue: 52 / 255)]), startPoint: .leading, endPoint: .trailing)
                            .frame(width: 370,height: 50)
                            .bold()
                            .clipShape(Circle())
                            .padding(.trailing,250)
                        NavigationLink(){
                            Diario()
                            
                        }label: {
                            HStack{
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .padding(.leading,30)
                                    .font(.system(size: 30))
                                    .bold()
                                
                                Text("Agregar nota al diario").font(Font.custom("MontserratItalic-Regular", size: 22))
                                    .foregroundStyle(.indigo)
                                    .padding(.trailing,60)
                                    .padding(.leading,2)
                    
                                
                            }
                            
                        }.navigationBarBackButtonHidden(true)
                        
                    }
                    
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 155 / 255, green: 255 / 255, blue: 234 / 255), Color(red: 117 / 255, green: 192 / 255, blue: 176 / 255)]), startPoint: .top, endPoint: .bottom)
                            .frame(width: 370,height: 120)
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        NavigationLink(){
                            IA()
                            
                        }label: {
                            HStack{
                                VStack{
                                    Text("Grupos")
                                        .foregroundStyle(.black)
                                        .font(Font.custom("MontserratItalic-Regular", size: 20))
                                        .padding(.leading,-70)
                                    Text("Sociales y mas")
                                        .foregroundStyle(.black)
                                        .font(Font.custom("MontserratItalic-Regular", size: 20))
                                        .padding(.leading,-10)
                                    Text("Comunidad")
                                        .foregroundStyle(.black)
                                        .padding(.leading,-10)
                                        .padding(.top,10)
                                        .bold()
                                        .font(.system(size: 25))
                                }
                                Image("Comunidad")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 133,height: 130)
                                    
                                
                            }
                        }
                        .navigationBarBackButtonHidden(true)
                        
                    }
                
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 193 / 255, green: 255 / 255, blue: 119 / 255), Color(red: 144 / 255, green: 187 / 255, blue: 90 / 255)]), startPoint: .top, endPoint: .bottom)
                            .frame(width: 370,height: 230)
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        VStack{
                            NavigationLink(){
                                Social()
                            }label: {
                                Text("¡Actividades cerca de ti!")
                                    .foregroundStyle(.black)
                                    .font(.title)
                                    .padding(.bottom,-10)
                                    .bold()
                                
                            }
                            Image("Mapa")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 233,height: 130)
                            
                        }
                        
                        
                    }
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 224 / 255, green: 143 / 255, blue: 33 / 255), Color(red: 224 / 255, green: 143 / 255, blue: 33 / 255)]), startPoint: .top, endPoint: .bottom)
                            .frame(width: 370,height: 320)
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        HStack{
                            VStack{
                                Image("P3")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 233,height: 130)
                                NavigationLink(){
                                    Historias()
                                }label: {
                                    Text("Anecdotas")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .bold()
                                    
                                }
                                Image("Platica")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 233,height: 130)
                                
                            }.padding(.leading,20)
                            
                            VStack{
                                Image("P1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 233,height: 130)
                                Image("Globo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20,height: 20)

                                Image("P2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 233,height: 130)
                                
                            }.padding(.leading,-100)
                            
                        }
                        
                    }
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 116 / 255, green: 191 / 255, blue: 175 / 255), Color(red: 116 / 255, green: 191 / 255, blue: 175 / 255)]), startPoint: .top, endPoint: .bottom)
                            .frame(width: 370,height: 320)
                            .bold()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        HStack{
                            VStack{
                                NavigationLink(){
                                    Social()
                                }label: {
                                    Text("Libros")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .bold()
                                    
                                }
                                Image("Libros2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200,height: 200)
                                
                            }.padding(.leading,20)
                            
                            VStack{
                                Image("Pluma")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70,height: 70)
                            

                                Image("Planta")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150,height: 150)
                                
                            }.padding(.leading,-20)
                            
                        }
                        
                    }
                    
                    HStack{
                        ZStack{
                            LinearGradient(gradient: Gradient(colors: [Color(red: 193 / 255, green: 255 / 255, blue: 119 / 255), Color(red: 144 / 255, green: 187 / 255, blue: 90 / 255)]), startPoint: .top, endPoint: .bottom)
                                .frame(width: 180,height: 230)
                                .bold()
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            VStack{
                                NavigationLink(){
                                    Social()
                                }label: {
                                    Text("")
                                        .foregroundStyle(.black)
                                        .font(.title)
                                        .bold()
                                    
                                }
                                Image("Mapa")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50,height: 50)
                                
                            }
                            
                            
                        }
                        ZStack{
                            LinearGradient(gradient: Gradient(colors: [Color(red: 53 / 255, green: 113 / 255, blue: 91 / 255), Color(red: 53 / 255, green: 113 / 255, blue: 91 / 255)]), startPoint: .top, endPoint: .bottom)
                                .frame(width: 180,height: 230)
                                .bold()
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            VStack{
                                
                                Image("jazz")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150,height: 150)
                                NavigationLink(){
                                    Social()
                                }label: {
                                    Text("MÚSICA")
                                        .foregroundStyle(.white)
                                        .font(.title)
                                        .padding(.bottom,20)
                                        .bold()
                                    
                                }
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.white)

                                    .font(.system(size: 30))
                                    .padding(.leading,120)
                                
                                    .padding(.top,-40)
                                    .bold()
                                
                            }
                            
                            
                        }
                        
                        
                    }.padding(.top)
                    
                   
                    
                    ZStack{
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(0..<10) {
                                    Text("Item \($0)")
                                        .foregroundStyle(.white)
                                        .font(.largeTitle)
                                        .frame(width: 200, height: 200)
                                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                                }
                            }
                        }
                        Rectangle()
                            .frame(width: 400,height: 50)
                            .padding(.bottom,250)
                        
                        Rectangle()
                            .frame(width: 400,height: 50)
                            .padding(.top,250)
                    }
                    .padding(.top,50)
                    ZStack{
                        Rectangle()
                            .frame(width: 350,height: 150)
                            .bold()
                            .foregroundColor(.red)
                            .background(.blue)
                            .clipShape(Circle())
                            .cornerRadius(20)
                        NavigationLink(){
                            Pagina_Principal()
                        }label: {
                            Text("Emergencia")
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                    }
                    
                    
                    
                }.navigationBarBackButtonHidden(true)
            }
            Spacer()
        }
    }
}
#Preview {
    Pagina_Principal()
}

