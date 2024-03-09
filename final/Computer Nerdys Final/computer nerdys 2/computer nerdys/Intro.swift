//
//  Intro.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import SwiftUI

struct Intro: View {
    @State private var currentindex = 0
        @State private var currentindex1 = 0

        let imagen : [String] = ["noti1","noti2","noti3","noti4"]
        let imagen1 : [String] = ["noti5","noti6","noti7"]
        
        var body: some View {
            NavigationStack{
                ZStack
                {
                    ScrollView{
                        VStack
                        {
                            Image("Group 8")
                                .resizable()
                                .scaledToFit()
                            
                            Image(imagen[currentindex])
                                .resizable()
                                .scaledToFit()
                                .padding()
                            
                            Image(imagen1[currentindex1])
                                .resizable()
                                .scaledToFit()
                                .padding()
                            
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
                            Spacer()
                            NavigationLink {
                                ventana2()
                            } label: {
                                Text("Ingresar")
                                    .foregroundColor(.white)
                                    .frame(width: 200,height: 50)
                                    .font(.custom("Montserrat", size: 25))
                                    .background(Color.orange)
                                    .cornerRadius(10)
                                    .padding(.vertical,110)
                            }
                        }
                        
                        
                        Spacer()
                            .onAppear()
                        {
                            Timer.scheduledTimer(withTimeInterval: 5, repeats: true)
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
                        //imagen1
                        .onAppear()
                    {
                        Timer.scheduledTimer(withTimeInterval: 5, repeats: true)
                        {
                            timer in
                            if self.currentindex1 + 1 == self.imagen1.count
                            {
                                self.currentindex1 = 0
                            }
                            else
                            {
                                self.currentindex1 += 1
                            }
                        }
                    }
                        
                    }
                }
            }
        }
}

#Preview {
    Intro()
}
