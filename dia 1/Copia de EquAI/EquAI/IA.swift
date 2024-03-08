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
        

    }
}

#Preview {
    IA()
}
