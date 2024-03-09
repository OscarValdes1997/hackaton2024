//
//  Traductor.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct Traductor: View {
    var body: some View {
        ZStack{
            Image("Gradiente")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(Color.white)
                        .shadow(radius: 10)
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "hand.wave")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .background(
                                    Circle()
                                        .foregroundColor(.white)
                                        .frame(width: 50, height: 50)
                                )
                                .padding()
                        })
                        
                        Image(systemName: "arrow.left.arrow.right")
                            .foregroundColor(.black)
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "waveform")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .background(
                                    Circle()
                                        .stroke(.blue, lineWidth: 5)
                                        .frame(width: 50, height: 50)
                                )
                                .padding()
                        })
                    }
                }
                .frame(width: 200, height: 70)
                .padding()
                
                VStack(){
                    Image("avatar")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 900, height: 600)
                    }
                    
                
                HStack() {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "text.justify")
                            .font(.title)
                            .frame(width: 70, height: 70)
                            .background(
                                RoundedRectangle(cornerRadius: 25.0)
                                    .foregroundColor(.white)
                            )
                            .offset(x: 150, y:-80)
                            .shadow(radius: 10)
                    })

                }
                .padding(.bottom, 30)
            }
            .frame(maxWidth: .infinity)
        }
    }
    
    func changeTranslate(option: String){
        
    }
}

#Preview {
    Traductor()
}
