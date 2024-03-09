//
//  Chat.swift
//  EquAI
//
//  Created by CEDAM 12 on 08/03/24.
//

import SwiftUI

struct Chat: View {
    @State var diario: String = ""
    var body: some View {
        TabView{
            VStack{
                Text("Hola, ¿En que puedo ayudarte?")
                    .frame(width: 300,height: 70)
                    .foregroundColor(Color.black)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .padding(.trailing,50)
                Text("Hola, ¿Que tal?")
                    .frame(width: 200,height: 70)
                    .foregroundColor(Color.black)
                    .background(Color(UIColor.systemCyan))
                    .cornerRadius(10)
                    .padding(.leading, 160)
                    .padding(.top)
                    .padding(.bottom,20)
                ZStack{
                    Rectangle()
                        .frame(width: 500,height: 100)
                        .bold()
                        .background(.blue)
                        .cornerRadius(20)
                        .padding(.bottom,120)
                    NavigationLink(){
                        Diario()
                    }label: {
                        
                    }
                    TextField("Que quieres decir hoy", text: $diario)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal, 60)
                        .padding(.bottom, 140)
                        .onChange(of: diario, perform: { value in
                            print("New value \(value)")
                            
                        })
                    
                    
                    
                }
            }
            .padding(.top,400)
            .tabItem { Image(systemName: "keyboard.badge.ellipsis")
                Rectangle()
            }
            Text("hola")
                .tabItem { Image(systemName: "person.crop.circle.fill") }
            
            
            
        }
    }
}

#Preview {
    Chat()
}
