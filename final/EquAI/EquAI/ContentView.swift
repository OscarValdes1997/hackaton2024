//
//  ContentView.swift
//  EquAI
//
//  Created by CEDAM 12 on 07/03/24.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{LinearGradient(gradient: Gradient(colors: [Color(red: 62 / 255, green: 12 / 255, blue: 52 / 255), Color(red: 173 / 255, green: 77 / 255, blue: 157 / 255)]), startPoint: .topTrailing, endPoint: .bottomLeading)
                
                
                    
                    .ignoresSafeArea()
                VStack{
                    Image("LogoSolo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300,height: 300)
                        .padding(.bottom,-100)
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320,height: 320)
                        
                    
                    
                    
                    
                    
                    ZStack{
                    
                        LinearGradient(gradient: Gradient(colors: [Color(red: 87 / 255, green: 194 / 255, blue: 175 / 255), Color(red: 173 / 255, green: 77 / 255, blue: 157 / 255)]), startPoint: .leading, endPoint: .trailing)
                            .frame(width: 200,height: 50)
                            .bold()
                            .clipShape(Capsule())
                        
                            
                        NavigationLink(){
                            Login().navigationBarBackButtonHidden(true)

                        }label: {
                            Text("Ingresar")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [Color(red: 87 / 255, green: 194 / 255, blue: 175 / 255), Color(red: 173 / 255, green: 77 / 255, blue: 157 / 255)]), startPoint: .leading, endPoint: .trailing)
                            .frame(width: 200,height: 50)
                            .bold()
                            .clipShape(Capsule())
                        NavigationLink(){
                            Primera()
                                .navigationBarBackButtonHidden(true)
                        }label: {
                            Text("Entrar como invitado")
                                .foregroundStyle(.white)
                            
                            
                        }
                        
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
