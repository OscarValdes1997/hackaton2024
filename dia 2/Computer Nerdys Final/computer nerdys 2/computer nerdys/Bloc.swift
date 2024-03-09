//
//  Bloc.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import SwiftUI

struct Bloc: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(alignment: .center, spacing: 8) {
                    Text("Blog EtnoClic")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    ScrollView{
                        HStack(alignment: .center, spacing: 8){
                            Image(systemName: "newspaper.fill")
                            Text("Nueva publicación")
                                .font(.custom("Montserrat", size: 20))
                                .foregroundColor(.gray)
                            
                        }
                        Text("Descripción de la punlicación")
                            .font(.custom("Montserrat", size: 20))
                        Image("bloc1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 200)
                            .padding()
                        HStack{
                            Image(systemName: "newspaper.fill")
                            Text("Publicación")
                                .font(.custom("Montserrat", size: 20))
                                .foregroundColor(.gray)
                            
                        }
                        Text("Descripción de la punlicación")
                            .font(.custom("Montserrat", size: 20))
                        Image("bloc2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 470, height: 200)
                        HStack{
                            Image(systemName: "newspaper.fill")
                            Text("Publicación")
                                .font(.custom("Montserrat", size: 20))
                                .foregroundColor(.gray)
                            
                        }
                        Text("Descripción de la punlicación")
                            .font(.custom("Montserrat", size: 20))
                        Image("bloc3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 345, height: 200)
                        HStack{
                            Image(systemName: "newspaper.fill")
                            Text("Publicación")
                                .font(.custom("Montserrat", size: 20))
                                .foregroundColor(.gray)
                            
                        }
                        Text("Descripción de la punlicación")
                            .font(.custom("Montserrat", size: 20))
                        Image("bloc3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 345, height: 200)
                        
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    Bloc()
}
