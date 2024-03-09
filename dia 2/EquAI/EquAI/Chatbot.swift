//
//  Chatbot.swift
//  EquAI
//
//  Created by CEDAM 12 on 08/03/24.
//

import SwiftUI

struct Chatbot: View {
    @State private var question: String = ""
    @ObservedObject private var aiManager = OpenAIManager()
    
    var body: some View {
        TabView{
            
            ScrollView{
                VStack {
                    TextField("Escribe tu pregunta aquí...", text: $question)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    
                    Button("Enviar") {
                        aiManager.askGPT3(question: question)
                    }
                    
                    if !aiManager.response.isEmpty {
                        Text(aiManager.response)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(lineWidth: 2)
                            )
                    }
                }
            }
            .tabItem { Image(systemName: "keyboard.badge.ellipsis")
                Rectangle()
            
        }
        }
    }
}

#Preview {
    Chatbot()
}
