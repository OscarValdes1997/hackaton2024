//
//  Healt.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//

import Foundation
import SwiftUI

struct SaludItem: Identifiable{
    let id = UUID()
    let icono : String
    let name : String
    let description : String
}

private let saludList: [SaludItem] = [
    SaludItem(
      icono: "🚨",
      name: "Primeros Auxilios",
      description: "Seccion dedicada para atender primeros auxilios"),
    SaludItem(
      icono: "💻",
      name: "Atencion Online",
      description: "Seccion para vincularte con un area de la salud"),
    SaludItem(
        icono: "🔆",
      name: "Recomendaciones ",
      description: "Recomendaciones generales para cuidar de tu salud y algunos consejos mas"),
    SaludItem(
        icono: "🏨",
      name: "Clinicas Cercanas ",
      description: "Clinicas cercanas a ti" )
    ]

struct SaludCircleView: View {
    let item: SaludItem
    var body: some View {
        ZStack{
            Text(item.icono)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width:65, height: 65 )
                .overlay(Circle().stroke(Color.blue, lineWidth: 3))
        }
    }
}

struct SaludDetails: View {
  let item: SaludItem

  var body: some View {
      //Color(hex: 0xD3E8EF)
    VStack(alignment: .leading) {
      HStack {
        SaludCircleView(item: item)
          .padding(.trailing, 5)
        Text(item.name)
              .foregroundColor(Color(hex: 0x0C1F5))
          .font(.largeTitle)
          .bold()
        Spacer()
      }
      Text(item.description)
        .padding(.top)
      Spacer()
    }
    .background(Color(hex: 0xD3E8EF))
      VStack{
              if item.name == "Primeros Auxilios" {
                // funcion stacs
                  contenedorStacks()
              } else if item.name == "Atencion Online" {
                // Vista para Atencion Online
                  //Text(item.name)
              } else if item.name == "Recomendaciones" {
                // Vista para Recomendaciones
                  //Text(item.name)
              } else {
                // Vista por defecto
                  //Text(item.name)
              }
          
      }
      .background(Color(hex: 0xD3E8EF))
  }
}


func healt() -> some View {
    //.background(Color.blue)
    VStack{
        List(saludList){SaludItem in
            NavigationLink(destination: SaludDetails(item: SaludItem)){
                HStack {
                    SaludCircleView(item: SaludItem)
                    Text(SaludItem.name)
                        .font(.headline)
                }.padding(7)
            }
        }
    }.background(Color(hex: 0xD3E8EF))
}
