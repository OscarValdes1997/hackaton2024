//
//  Pagina_Principal.swift
//  EquAI
//
//  Created by CEDAM 12 on 07/03/24.
//
import SwiftUI
import Foundation


struct Pagina_Principal: View {
    
    @State var diario: String = ""
    
    var body: some View {
        NavigationView {
            
            ScrollView{
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 350,height: 150)
                            .bold()
                            .background(.blue)
                            .cornerRadius(20)
                        NavigationLink(){
                            IA()
                        }label: {
                            Text("No estas solo")
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                        
                    }
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
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 350,height: 150)
                            .bold()
                            .background(.blue)
                            .clipShape(Rectangle())
                            .cornerRadius(20)
                        NavigationLink(){
                            Social()
                        }label: {
                            Text("Grupos sociales")
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 350,height: 150)
                            .bold()
                            .background(.blue)
                            .clipShape(Rectangle())
                            .cornerRadius(20)
                        NavigationLink(){
                            Pagina_Principal()
                        }label: {
                            Text("Actividades cerca de ti")
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 350,height: 150)
                            .bold()
                            .background(.blue)
                            .clipShape(Rectangle())
                            .cornerRadius(20)
                        NavigationLink(){
                            Pagina_Principal()
                        }label: {
                            Text("Actividades cerca de ti")
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                    }
                    ZStack{
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(0..<10) {
                                    Text("Item \($0)")
                                        .foregroundStyle(.white)
                                        .font(.largeTitle)
                                        .frame(width: 200, height: 200)
                                        .background(.red)
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
                    .padding(.top,50)
                    ZStack{
                        Rectangle()
                            .frame(width: 350,height: 150)
                            .bold()
                            .background(.blue)
                            .clipShape(Circle())
                            .cornerRadius(20)
                        NavigationLink(){
                            Pagina_Principal()
                        }label: {
                            Text("Emergencia")
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                    }
                    
                    
                    
                }
            }
            Spacer()
        }
    }
}
#Preview {
    Pagina_Principal()
}

