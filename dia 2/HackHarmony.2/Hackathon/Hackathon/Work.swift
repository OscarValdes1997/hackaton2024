//
//  Work.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//

import Foundation
import SwiftUI


struct TrabajoItem: Identifiable{
    let id = UUID()
    let idioma : String
    let name : String
    let description : String
}
private let trabajoList: [TrabajoItem] = [
    TrabajoItem(
      idioma: "💻",
      name: "Desarrollador de software",
      description: "Profesional encargado de diseñar, desarrollar y mantener aplicaciones de software."),
    TrabajoItem(
      idioma: "👩‍⚕️",
      name: "Enfermera",
      description: "Profesional de la salud encargado de proporcionar cuidados a los pacientes."),
    TrabajoItem(
        idioma: "👨‍🍳",
      name: "Chef",
      description: "Persona experta en preparar y cocinar alimentos de forma creativa."),
    TrabajoItem(
        idioma: "👨‍🏫",
      name: "Maestro de escuela",
      description: "Educador dedicado a enseñar y guiar a los estudiantes en su aprendizaje."),
    TrabajoItem(
        idioma: "⚡",
      name: "Electricista",
      description: "Profesional especializado en la instalación y mantenimiento de sistemas eléctricos."),
    TrabajoItem(
        idioma: "🔨",
      name: "Carpintero",
      description: "Creación de muebes y otros objetos de madera"),
    TrabajoItem(
        idioma: "🍾",
      name: "Pulidor de Marmol",
      description: "Persona encargada del mantenimiento y brillado de marmol, sea piso, muros o cubiertas"),
    TrabajoItem(
        idioma: "🏵️",
      name: "Jardinero",
      description: "Trabajador que se encarga del mantenimiento y cuidado de jardines, parques y áreas verdes."),
    TrabajoItem(
        idioma: "🚰",
      name: "Fontanero",
      description: "Profesional especializado en la instalación y reparación de sistemas de fontanería y tuberías."),
    TrabajoItem(
        idioma: "🚚",
      name: "Repartidor",
      description: "Persona encargada de entregar bienes y mercancías a clientes o destinatarios según las indicaciones y rutas establecidas."),
    TrabajoItem(
        idioma: "🍔",
      name: "Camarero",
      description: "Persona encargada de atender a los clientes en restaurantes y bares, tomando pedidos y sirviendo comida y bebidas."),
  ]
struct TrabajoCircleView: View {
    let item: TrabajoItem
    var body: some View {
        ZStack{
            Text(item.idioma)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width:65, height: 65 )
                .overlay(Circle().stroke(Color.purple, lineWidth: 3))
        }
    }
}

struct TrabajoDetails: View {
    let item: TrabajoItem
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                TrabajoCircleView(item: item)
                    .padding(.trailing, 5)
                Text(item.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(hex: 0xFC9200))
                Spacer()
            }
            Text(item.description)
                .padding(.top)
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(item.name), displayMode:.inline )
        .background(Color(hex: 0xFFCF97))
    }
}

func work() -> some View {
    
    VStack{
        List(trabajoList){TrabajoItem in
            NavigationLink(destination: TrabajoDetails(item: TrabajoItem)){
                HStack {
                    TrabajoCircleView(item: TrabajoItem)
                    Text(TrabajoItem.name)
                        .font(.headline)
                    
                }.padding(7)
            }
        }
    }
    .navigationTitle("Trabajo en esta área")
    
}



