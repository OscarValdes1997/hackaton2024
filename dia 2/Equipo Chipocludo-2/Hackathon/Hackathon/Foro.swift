//
//  Foro.swift
//  Hackathon
//
//  Crea
//
//  Foro.swift
//  hakatlon
//
//  Created by CEDAM23 on 07/03/24.
//
import SwiftUI
struct PrimaryButtonStyle: ButtonStyle {
    struct Button: View {
        let configuration: ButtonStyle.Configuration
        @Environment(\.isEnabled) private var isEnabled: Bool
        // Asignamos diferentes colores dependiendo si el botón
        // está pulsado, deshabilitado o en su estado por defecto
        // 👇👇👇
        var color: Color {
            if configuration.isPressed {
                return .blue
            } else if !isEnabled {
                return .gray
            } else {
                return Color.mint.opacity(0.7)
            }
        }
        var body: some View {
            configuration.label
                .padding(20)
                .font(.system(.title))
                .frame(height: 50)
                .foregroundColor(.black)
                .background(color) // 👈  Utilizamos el color
                .cornerRadius(7)
        }
    }
    func makeBody(configuration: Configuration) -> some View {
        PrimaryButtonStyle.Button(configuration: configuration)
    }
}
struct Foro: View {
    @State var isPresented: Bool = false
    @State var text = "Escribe algo..."
        @State var counter = 0
    
    
    var body: some View {
        VStack(spacing:20){
            HStack(spacing: 20){
                Text("FORO")
                    .bold()
                    .font(.largeTitle)
                    .padding(.trailing,90)
                    .padding(.leading,-18)
                Button(action: { isPresented = true }, label: {
                            Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25)
                        .foregroundColor(Color.black)
                        
                                
                        })
                
                .fullScreenCover(isPresented: $isPresented,
                                 onDismiss: { isPresented = false },
                                 content: {
                                    ZStack {
                                        Color.white.ignoresSafeArea()
                                        VStack{
                                            
                                            Image("perfil")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 80,height: 80)
                                        
                                            TextEditor(text: $text)
                                                       .font(.title)
                                                       .autocapitalization(.none)
                                                       .disableAutocorrection(true)
                                                       .foregroundColor(.blue)
                                                       .padding()
                                                       .frame(width: 350,height: 590)
                                                       .border(Color.mint,width: 3)
                                                       .cornerRadius(10)
                                                      
                                                 
                                            
                                            Button(action: { isPresented = false }, label: {
                                                
                                                Text("Iniciar Discusion")
                                                
                                                    .bold()
                                                    .font(.largeTitle)
                                                    .foregroundColor(.white)
                                                    .padding(12)
                                                    .padding(.horizontal,30)
                                                    .background(Color.mint)
                                                    .cornerRadius(12)
                                                    
                                                
                                            })
                                            
                                        }
                                        
                                     
                                                                            }
                                    .onAppear {
                                        print("...")
                                    }
                                 })
                
                //Image(systemName: "plus")
                    //.resizable()
                    //.scaledToFit()
                    //.frame(width: 25)
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                Image(systemName: "text.justify")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                
            
            }
            
                HStack{
                    Button("Populares") {
                                // Action code here
                            }
                            .buttonStyle(PrimaryButtonStyle())
                           
                    
                    
                        
                    Button("Recientes") {
                                // Action code here
                        
                            }
                    .padding(20)
                    .font(.system(.title))
                    .frame(height: 50)
                    .foregroundColor(.black)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(7)
                            
                            
                    
                    
                        
                }
            ZStack{
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.2)
                ScrollView(.vertical){
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 375,height: 130)
                                .foregroundColor(.white)
                                .padding(.top)
                            HStack{
                                Image("perfil")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .padding(.leading,6)
                                    .padding(.top,5)
                                    .padding(.trailing,20)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ultricies urna, vehicula tempor enim.")
                                    .frame(width: 170,height: 40)
                                    .padding(.leading,-20)
                                    .padding(.top,-28)
                                    .bold()
                                VStack{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.top,6)
                                        .padding(.bottom,8)
                                    Text(Date.now.addingTimeInterval(600), style: .date)
                                        .padding(.bottom,-30)
                                        .padding(.trailing,16)
                                }
                                
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 375,height: 130)
                                .foregroundColor(.white)
                                .padding(.top)
                            HStack{
                                Image("perfil2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .padding(.leading,6)
                                    .padding(.top,5)
                                    .padding(.trailing,20)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ultricies urna, vehicula tempor enim.")
                                    .frame(width: 170,height: 40)
                                    .padding(.leading,-20)
                                    .padding(.top,-28)
                                    .bold()
                                VStack{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.top,6)
                                        .padding(.bottom,8)
                                    Text(Date.now.addingTimeInterval(600), style: .date)
                                        .padding(.bottom,-30)
                                        .padding(.trailing,16)
                                }
                                
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 375,height: 130)
                                .foregroundColor(.white)
                                .padding(.top)
                            HStack{
                                Image("perfil")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .padding(.leading,6)
                                    .padding(.top,5)
                                    .padding(.trailing,20)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ultricies urna, vehicula tempor enim.")
                                    .frame(width: 170,height: 40)
                                    .padding(.leading,-20)
                                    .padding(.top,-28)
                                    .bold()
                                VStack{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.top,6)
                                        .padding(.bottom,8)
                                    Text(Date.now.addingTimeInterval(600), style: .date)
                                        .padding(.bottom,-30)
                                        .padding(.trailing,16)
                                }
                                
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 375,height: 130)
                                .foregroundColor(.white)
                                .padding(.top)
                            HStack{
                                Image("perfil")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .padding(.leading,6)
                                    .padding(.top,5)
                                    .padding(.trailing,20)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ultricies urna, vehicula tempor enim.")
                                    .frame(width: 170,height: 40)
                                    .padding(.leading,-20)
                                    .padding(.top,-28)
                                    .bold()
                                VStack{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.top,6)
                                        .padding(.bottom,8)
                                    Text(Date.now.addingTimeInterval(600), style: .date)
                                        .padding(.bottom,-30)
                                        .padding(.trailing,16)
                                }
                                
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 375,height: 130)
                                .foregroundColor(.white)
                                .padding(.top)
                            HStack{
                                Image("perfil")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .padding(.leading,6)
                                    .padding(.top,5)
                                    .padding(.trailing,20)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ultricies urna, vehicula tempor enim.")
                                    .frame(width: 170,height: 40)
                                    .padding(.leading,-20)
                                    .padding(.top,-28)
                                    .bold()
                                VStack{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.top,6)
                                        .padding(.bottom,8)
                                    Text(Date.now.addingTimeInterval(600), style: .date)
                                        .padding(.bottom,-30)
                                        .padding(.trailing,16)
                                }
                                
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 375,height: 130)
                                .foregroundColor(.white)
                                .padding(.top)
                            HStack{
                                Image("perfil")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .padding(.leading,6)
                                    .padding(.top,5)
                                    .padding(.trailing,20)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ultricies urna, vehicula tempor enim.")
                                    .frame(width: 170,height: 40)
                                    .padding(.leading,-20)
                                    .padding(.top,-28)
                                    .bold()
                                VStack{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.top,6)
                                        .padding(.bottom,8)
                                    Text(Date.now.addingTimeInterval(600), style: .date)
                                        .padding(.bottom,-30)
                                        .padding(.trailing,16)
                                }
                                
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 375,height: 130)
                                .foregroundColor(.white)
                                .padding(.top)
                            HStack{
                                Image("perfil")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .padding(.leading,6)
                                    .padding(.top,5)
                                    .padding(.trailing,20)
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed ultricies urna, vehicula tempor enim.")
                                    .frame(width: 170,height: 40)
                                    .padding(.leading,-20)
                                    .padding(.top,-28)
                                    .bold()
                                VStack{
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .padding(.top,6)
                                        .padding(.bottom,8)
                                    Text(Date.now.addingTimeInterval(600), style: .date)
                                        .padding(.bottom,-30)
                                        .padding(.trailing,16)
                                }
                                
                            }
                        }
                    }
                }
                
                    
                    Spacer()
                }
                
                    
            }
            Spacer()
               
            
            
        }
    }
#Preview {
    Foro()
}
