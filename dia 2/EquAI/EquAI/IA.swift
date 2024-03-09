//
//  IA.swift
//  EquAI
//
//  Created by CEDAM 12 on 07/03/24.
//

import SwiftUI
import Foundation



struct Message: Hashable {
    var id = UUID()
    var content: String
    var isCurrentUser: Bool
}

struct IA: View {
    @State var diario: String = ""
    
    var body: some View {
        Text("Hola, ¿En que puedo ayudarte?")
                            .frame(width: 300,height: 70)
                           .foregroundColor(Color.black)
                           .background(Color(UIColor.systemGray6))
                           .cornerRadius(10)
                           .padding(.top,500)
                           .padding(.trailing,50)
                           
        Text("Hola, ¿Que tal?")
                           .frame(width: 200,height: 70)
                           .foregroundColor(Color.black)
                           .background(Color(UIColor.systemCyan))
                           .cornerRadius(10)
                           .padding(.leading, 160)
                           .padding(.top)
                           .padding(.bottom,100)
        
        ZStack{
            Rectangle()
                .frame(width: 350,height: 150)
                .bold()
                .background(.blue)
                .cornerRadius(20)
            NavigationLink(){
                Diario()
            }label: {
                Text("Diario")
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding(.bottom,50)
            }
            TextField("Que quieres decir hoy", text: $diario)
                .keyboardType(.default)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.white.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 70)
                .onChange(of: diario, perform: { value in
                    print("New value \(value)")
                })
            
            
            
        }
        
        
        

    }
}

#Preview {
    IA()
}
