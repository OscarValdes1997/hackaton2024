//
//  registro1.swift
//  proyectoTrabajo
//
//  Created by CEDAM28 on 07/03/24.
//

import SwiftUI

struct registro: View {
    enum Numeros{
        case int
    }
    
        @State private var nombre: String = ""
        @State private var apellidoM: String = ""
        @State private var apellidoP: String = ""
        @State private var edad: String = ""
        @FocusState private var numeros: Numeros?
        @State private var direccion: String = ""
        @State private var codigopostal: String = ""
    
    
    
        var body: some View {
            ZStack {
                
                Color.purple.opacity(0.2)
                Image("Imagen1")
                    .resizable()    //Dimensiona nuestra imagen
                    .frame(width: 100, height: 100) //Tamanio de la imagen
                    .cornerRadius(8.0)//Bordes
                    .offset(y:-250)//Subir, Bajar, Posicion
                    
                
                Text("Bienvenido a ¡DenticX")
                    .font(.title.italic())
                    .offset(y:-320)
                    .foregroundColor(.indigo)
                Text("Ingrese sus datos")
                    .font(.title.bold())
                    .offset(y:-280)
                    .foregroundColor(.indigo)
                
                VStack{
                    TextField("Nombre", text: $nombre)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                        .padding(.horizontal)
                        .frame(width: 400)
                    
                    TextField("Apellido Materno", text: $apellidoM)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                        .padding(.horizontal)
                        .frame(width: 400)
                    
                    TextField("Apellido Paterno", text: $apellidoP)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                        .padding(.horizontal)
                        .frame(width: 400)
                    
                    TextField("Ingrese su edad", text: $edad)
                        .focused($numeros, equals: .int)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                        .padding(.horizontal)
                        .frame(width: 400)
                    
                    TextField("Direccion", text: $direccion)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                        .padding(.horizontal)
                        .frame(width: 400)
                    
                    TextField("Ingrese su codigo postal", text: $codigopostal)
                        .focused($numeros, equals: .int)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                        .padding(.horizontal)
                        .frame(width: 400)
                           
                    
                    
                    /NavigationLink(destination: Text("Felcicidades @\(nombre)"), isActive: $show)/
                }
                
                Text("Generos")
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(14.0)
                    .offset(x: -100, y:250)
                    .contextMenu(
                        ContextMenu(menuItems: {
                            Button("Heterosexual"){
                            }
                            Button("Homosexual"){
                            }
                            Button("Bisexual"){
                            }
                            Button("Asexual"){
                            }
                            Button("Androginosexual"){
                            }
                            Button("Antrosexual"){
                            }
                            Button("Autosexual"){
                            }
                            Button("Bicurios@"){
                            }
                            Button("Demisexual"){
                            }
                            /*Button(action: {
                                print("xd")
                            }, label: {
                                Text("Button")
                            })*/
                    }))
                
                Text("Discapacidades")
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(14.0)
                    .offset(x: 100, y:250)
                    .contextMenu(
                        ContextMenu(menuItems: {
                            Button("Fisica"){
                            }
                            Button("Motora o funcional"){
                            }
                            Button("Organica"){
                            }
                            Button("Mental"){
                            }
                            Button("Intelectual"){
                            }
                            Button("Sensorial"){
                            }
                            Button("Pluridiscapacidad"){
                            }
                            /*Button(action: {
                                print("xd")
                            }, label: {
                                Text("Button")
                            })*/
                    }))
                
                
                Button("Iniciar"){
                    
                }
                .foregroundColor(.blue)
                .frame(width: 200, height: 50)
                .background(Color.white)
                .cornerRadius(10.0)
                .offset(y:370)
                
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
            //.padding()
        }
    func autheticaUser(nombre: String){
        
    }
    }

struct SwiftUIview_Previews: PreviewProvider{
    static var previews: some View{
        registro()
    }
}
#Preview {
    registro()
}
#Preview {
    registro()
}
