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
            VStack{
                Rectangle()
                    .frame(width: 300,height: 300)
                    .padding(.bottom,100)
                
                
                
                ZStack{
                    Rectangle()
                        .frame(width: 200,height: 50)
                        .bold()
                        .background(.blue)
                        .clipShape(Capsule())
                    NavigationLink(){
                        Registrase()
                    }label: {
                        Text("Ingresar")
                            .foregroundStyle(.white)
                    }
                }
                .padding()
                ZStack{
                        Rectangle()
                            .frame(width: 200,height: 50)
                            .bold()
                            .background(.blue)
                            .clipShape(Capsule())
                        NavigationLink(){
                            Pagina_Principal()
                        }label: {
                            Text("Entrar como invitado")
                                .foregroundStyle(.white)
                        }
                        
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
