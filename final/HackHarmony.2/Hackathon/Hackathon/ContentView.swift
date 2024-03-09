//
//  ContentView.swift
//  Hackathon
//
//  Created by CEDAM 13 on 07/03/24.
//

import SwiftUI

//Listado de Iconos para el menú
let iconos=["house", "book","briefcase","cross", "gear"]


struct ContentView: View {
    @State var IndexSeleccionado=0
    @State private var speed = 5.0
    @State private var isEditing = false
    @State private var tieneDiscapacidad = false
    var body: some View {
        VStack{
            ZStack{
                
                //Switch para la navegación
                switch IndexSeleccionado{
                //Pantalla inicial
                case 0:
                    Home()
                    
                //Pantalla de estudios (segunda opción)
                case 1:
                    NavigationView{
                        
                        School()
                        .navigationTitle("Educación")
                    }
                    
                //Opción de trabajo, tercera opción
                case 2:
                    NavigationView{
                        work()
                    }
                    
                //Opción de salud, cuarta opción
                case 3:
                    NavigationView{
                        healt()
                        .navigationTitle("Salud")
                    }
                    
                    
                //Opción de configuración, quinta opción
                default:
                    
                    NavigationView{
                        VStack{
                            //Text("Pantalla 2")
                            HStack {
                                        Image("user")
                                            .resizable()
                                            .frame(width: 100, height: 100) // Ajusta el tamaño de la imagen según sea necesario
                                        
                                        Text("Fernando Aguilar")
                                            .padding() // Añade espacio alrededor del texto
                                    }
                            Toggle(isOn: $tieneDiscapacidad) {
                                Text("¿Tiene alguna discapacidad?")
                            }
                            
                            Slider(value: $speed, in: 0...70,
                                   onEditingChanged: { editing in
                                       isEditing = editing
                                   }
                               )
                            .padding()
                            Text("\(Int(speed))")
                                .padding()
                                .foregroundColor(isEditing ? .red : .blue)                        }
                        .padding()
                        .navigationTitle("Configuraciones")
                    }
                }
            }
            Spacer()
            HStack{
                //Formato del menú
                ForEach(0..<5, id: \.self){ numeros in
                    Spacer()
                        .background(Color.red)
                    Button(action: {
                        self.IndexSeleccionado = numeros
                    }, label: {
                        if numeros == 0 {
                            Image(systemName: iconos[numeros])
                                .frame(width: 60, height: 60)
                                .font(.title)
                                .foregroundColor(Color(hex: 0x125e53))
                        }
                        else{
                            Image(systemName: iconos[numeros])
                                .font(.title)
                                .foregroundColor(Color(hex: 0x125e53))
                        }
                    })
                }
                Spacer()
            }
        }
        
        .background(Color.white)
        
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}

#Preview {
    ContentView()
}


extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
