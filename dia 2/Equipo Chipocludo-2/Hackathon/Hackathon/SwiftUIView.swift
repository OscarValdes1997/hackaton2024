//
//  SwiftUIView.swift
//  Hackathon
//
//  Created by CEDAM25 on 08/03/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(hex: 0xb2e0f9)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        TabView{
                            Feed()
                                .tabItem {
                                    Image(systemName: "house")
                                    Text("Inicio")
                                }
                            
                            buscador()
                                .tabItem {
                                    Image(systemName: "magnifyingglass")
                                    Text("Buscar")
                                }
                            
                            QDPublicar()
                                .tabItem {
                                    Image(systemName: "plus.bubble.fill")
                                    Text("Publicar")
                                }
                            Foro()
                                .tabItem {
                                    Image(systemName: "bubble.left.and.text.bubble.right")
                                    Text("Foro")
                                }
                            
                            Mensajes()
                                .tabItem {
                                    Image(systemName: "ellipsis.message.fill")
                                    Text("Chat")
                                }
                            Home()
                                .tabItem {
                                    Image(systemName: "note.text")
                                    Text("Notificaciones")
                                }
        
                            Perfil()
                                .tabItem {
                                    Image(systemName: "person.fill")
                                    Text("Perfil")
                                }
                            PerfilEmpresa()
                                .tabItem {
                                    Image(systemName: "person.fill")
                                    Text("Perfil Empresa")
                                }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
