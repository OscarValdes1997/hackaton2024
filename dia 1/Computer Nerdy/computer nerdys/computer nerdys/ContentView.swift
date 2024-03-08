//
//  ContentView.swift
//  computer nerdys
//
//  Created by CEDAM03 on 07/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentindex = 0
    let imagen : [String] = ["gatito1","gatito2"]
    
    var body: some View {
        Text("Nombre de aplicacion")
            VStack
            {
                Image(imagen[currentindex])
                    .resizable()
                    .scaledToFit()
            }
        HStack
        {
            
            ForEach(0..<imagen.count)
            {
                index in
                Circle()
                    .fill(self.currentindex == index ? Color.gray : Color.brown)
                    .frame(width: 10,height: 10)
            }
        
        }
        NavigationStack()
        {
            NavigationLink {
                //
            } label: {
                Text("Ingresar")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .frame(width: 200,height: 100)
                    .background(.red)
                    .font(.custom("Courier", size: 25))
                    .cornerRadius(25)
            }

        }
        
        Spacer()
        .onAppear()
        {
            Timer.scheduledTimer(withTimeInterval: 2, repeats: true)
            {
                timer in
                if self.currentindex + 1 == self.imagen.count
                {
                    self.currentindex = 0
                }
                else
                {
                    self.currentindex += 1
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

