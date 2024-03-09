//
//  ventana3.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import SwiftUI

struct ventana3: View {
    var body: some View {
        NavigationStack{
            VStack(){
                Image("Group 8")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200)
                    .padding(.top,-200)
                
                Text("¿Qué quieres hacer?")
                    .font(.custom("Montserrat", size: 35))
                    //.offset(x: 1, y:-160)
                NavigationLink{
                    Reporte()
                } label:{
                    Text("Levantar reporte")
                        .foregroundColor(.white)
                        .font(.custom("Montserrat", size: 20))
                        .frame(width: 250, height: 60)
                        .background(Color.orange)
                        .cornerRadius(100)
                        //.offset(x: 1, y:-130)
                }
                .padding()
                NavigationLink{
                    Orientacion()
                } label:{
                    Text("Buscar orientación")
                        .foregroundColor(.white)
                        .font(.custom("Montserrat", size: 20))
                        .frame(width: 250, height: 60)
                        .background(Color.orange)
                        .cornerRadius(100)
                        //.offset(x: 1, y:-130)
                }
                .padding()
                NavigationLink{
                    Publicar()
                } label:{
                    Text("Informar de alguna problematica externa")
                        .foregroundColor(.white)
                        .font(.custom("Montserrat", size: 20))
                        .frame(width: 250, height: 60)
                        .background(Color.orange)
                        .cornerRadius(150)
                        //.offset(x: 1, y:-130)
                }
                .padding()
                NavigationLink{
                    Bloc()
                } label:{
                    Text("Ir al Bloc")
                        .foregroundColor(.white)
                        .font(.custom("Montserrat", size: 20))
                        .frame(width: 250, height: 60)
                        .background(Color.orange)
                        .cornerRadius(100)
                       // .offset(x: 1, y:-130)
                }
                
               
            }
        }
        
    }
}

#Preview {
    ventana3()
}
