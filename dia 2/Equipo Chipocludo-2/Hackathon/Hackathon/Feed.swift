//
//  Feed.swift
//  Hackathon
//
//  Created by CEDAM25 on 08/03/24.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        NavigationStack{
            ZStack{
                
                //.frame(height: 200)
                
                Rectangle()
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                    .frame(width: 400, height: 750)
                    //.padding(.top,50)
                ScrollView{
                    VStack{
                        ZStack{
                            
                            HStack{
                                Image("persona")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.mint)
                                    .frame(width: 70,height: 70)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                                VStack{
                                    Text("Nombre de Usuario")
                                        .font(.title2)
                                    Text("México")
                                }
                                .padding(.trailing,80)
                            }
                        }
                        
                        //PUblicaciones
                        Rectangle()
                            .frame(width: 3400, height: 2)
                            .foregroundColor(.black)
                            .padding(.bottom,15)
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 310, height: 100)
                                    .foregroundColor(Color(hex: 0xf2f2f7))
                                    .padding(.leading,15)
                                    .cornerRadius(35)
                                Image("perro")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.mint)
                                    .frame(width: 50,height: 50)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .padding(.trailing,290)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                    .frame(width: 280, height: 120)
                                
                            }
                            HStack{
                                Text("102")
                                Image(systemName: "hand.thumbsup.fill")
                                    .padding(.trailing,5)
                                
                                Text("25")
                                Image(systemName: "bubble.left.fill")
                                    .padding(.trailing,5)
                                
                                Text("3")
                                Image(systemName: "arrowshape.turn.up.backward.fill")
                                    .padding(.trailing,5)
                            }
                        }
                        Rectangle()
                            .frame(width: 3400, height: 2)
                            .foregroundColor(Color(hex:0xf2f2f7))
                            .padding(.top,15)
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 310, height: 100)
                                    .foregroundColor(Color(hex: 0xf2f2f7))
                                    .padding(.leading,15)
                                    .cornerRadius(35)
                                Image("gato")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.mint)
                                    .frame(width: 50,height: 50)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .padding(.trailing,290)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                    .frame(width: 280, height: 120)
                                
                            }
                            Image("arboles")
                            
                            HStack{
                                Text("102")
                                Image(systemName: "hand.thumbsup.fill")
                                    .padding(.trailing,5)
                                
                                Text("25")
                                Image(systemName: "bubble.left.fill")
                                    .padding(.trailing,5)
                                
                                Text("3")
                                Image(systemName: "arrowshape.turn.up.backward.fill")
                                    .padding(.trailing,5)
                            }
                        }.padding()
                        Rectangle()
                            .frame(width: 3400, height: 2)
                            .foregroundColor(Color(hex:0xf2f2f7))
                            .padding(.top,15)
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 310, height: 100)
                                    .foregroundColor(Color(hex: 0xf2f2f7))
                                    .padding(.leading,15)
                                    .cornerRadius(35)
                                Image("perro")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.mint)
                                    .frame(width: 50,height: 50)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .padding(.trailing,290)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                    .frame(width: 280, height: 120)
                                
                            }
                            HStack{
                                Text("102")
                                Image(systemName: "hand.thumbsup.fill")
                                    .padding(.trailing,5)
                                
                                Text("25")
                                Image(systemName: "bubble.left.fill")
                                    .padding(.trailing,5)
                                
                                Text("3")
                                Image(systemName: "arrowshape.turn.up.backward.fill")
                                    .padding(.trailing,5)
                            }
                        } .padding()
                        Rectangle()
                            .frame(width: 3400, height: 2)
                            .foregroundColor(Color(hex:0xf2f2f7))
                            .padding(.top,15)
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .frame(width: 310, height: 100)
                                    .foregroundColor(Color(hex: 0xf2f2f7))
                                    .padding(.leading,15)
                                    .cornerRadius(35)
                                Image("gato")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.mint)
                                    .frame(width: 50,height: 50)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .padding(.trailing,290)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                    .frame(width: 280, height: 120)
                                
                            }
                            Image("arboles")
                            
                            HStack{
                                Text("102")
                                Image(systemName: "hand.thumbsup.fill")
                                    .padding(.trailing,5)
                                
                                Text("25")
                                Image(systemName: "bubble.left.fill")
                                    .padding(.trailing,5)
                                
                                Text("3")
                                Image(systemName: "arrowshape.turn.up.backward.fill")
                                    .padding(.trailing,5)
                            }
                        }.padding()
                        Rectangle()
                            .frame(width: 3400, height: 2)
                            .foregroundColor(Color(hex:0xf2f2f7))
                            .padding(.top,15)
                    }
                    //.padding(.top,40)
                }
            }
        }
    }
}

#Preview {
    Feed()
}
