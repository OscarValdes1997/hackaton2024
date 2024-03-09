//
//  ContentView.swift
//  computer nerdys
//
//  Created by CEDAM03 on 07/03/24.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationStack
        {
            ZStack
            {
                VStack
                {
                    Image("Recurso 15")
                    
                    NavigationLink {
                        Intro()
                    } label: {
                        Text("Ingresar")
                            .foregroundColor(.white)
                            .frame(width: 200,height: 50)
                            .font(.custom("Montserrat", size: 25))
                            .background(Color.orange)
                            .cornerRadius(10)
                            .padding(.top,60)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}


//extension Color
//{
//    init(hex: Int, opacity: Double = 1) {
//        self.init
//        (
//            .sRGB,
//            red: Double((hex >> 16) & 0xff) / 255,
//            green: Double((hex >> 16) & 0xff) / 255,
//            blue: Double((hex >> 16) & 0xff) / 255,
//            opacity: opacity
//
//
//            
//        )
//    }
//    
//}
