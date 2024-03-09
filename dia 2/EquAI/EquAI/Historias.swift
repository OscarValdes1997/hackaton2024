//
//  Historias.swift
//  EquAI
//
//  Created by CEDAM 12 on 08/03/24.
//

import SwiftUI

struct Historias: View {
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.black)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 200)
                                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                            }
                        }
                    }
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.bottom,250)
                    
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.top,250)
                }
                ZStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.black)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 200)
                                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                            }
                        }
                    }
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.bottom,250)
                    
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.top,250)
                }
                ZStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.black)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 200)
                                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                            }
                        }
                    }
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.bottom,250)
                    
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.top,250)
                }
                ZStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.black)
                                    .font(.largeTitle)
                                    .frame(width: 200, height: 200)
                                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                            }
                        }
                    }
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.bottom,250)
                    
                    Rectangle()
                        .frame(width: 400,height: 50)
                        .padding(.top,250)
                }
            }
        }
    }
}

#Preview {
    Historias()
}
