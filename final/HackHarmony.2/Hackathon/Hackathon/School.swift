//
//  School.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//
import Foundation
import SwiftUI


struct EducacionOption: Identifiable{
    let id = UUID()
    let nivel : String
    let name : String
}
struct EducacionItem: Identifiable{
    let id = UUID()
    let materia : String
    let name : String
    let description : String
}

private let educacionListO: [EducacionOption] = [
    EducacionOption(
      nivel: "📕",
      name: "Concimientos Basicos"),
    EducacionOption(
      nivel: "📋",
      name: "Conocimientos Técnicos"),
    ]
private let educacionListbasicosMateria: [EducacionItem] = [
    EducacionItem(
        materia: "🏫",
      name: "Primaria",
      description: "Conocimientos para primaria"),
    EducacionItem(
        materia: "👨‍🏫",
      name: "Secundaria",
      description: "Conocimientos de secundaria")
    ]
private let educacionListbasicosOficio: [EducacionItem] = [
    EducacionItem(
        materia: "🪚",
      name: "Carpinteria",
      description: "Conocimientos basicos de Carpinteria"),
    EducacionItem(
        materia: "🧰",
      name: "Albañileria",
      description: "Conocimientos basicos de Albañileria"),
    EducacionItem(
        materia: "🛠️",
      name: "Mecanica",
      description: "Conocimientos basicos de Mecanica"),
    EducacionItem(
        materia: "🥖",
      name: "Panaderia",
      description: "Conocimientos basicos de Panaderia" )
    ]

struct EducacionOpCircleView: View {
    let item: EducacionOption
    var body: some View {
        ZStack{
            Text(item.nivel)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width:65, height: 65 )
                .overlay(Circle().stroke(Color.pink, lineWidth: 3))
        }
    }
}
struct EducacionItCircleView: View {
    let item: EducacionItem
    var body: some View {
        ZStack{
            Text(item.materia)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width:65, height: 65 )
                .overlay(Circle().stroke(Color.pink, lineWidth: 3))
        }
    }
}

struct EducacionMenuDetails: View {
  let item: EducacionOption

  var body: some View {
    VStack(alignment: .leading) {
      HStack {
          EducacionOpCircleView(item: item)
          .padding(.trailing, 5)
        Text(item.name)
          .font(.largeTitle)
          .bold()
          .foregroundColor(Color(hex: 0x8C092F))
        Spacer()
      }.padding(.top)
      Spacer()
    }
    .background(Color(hex: 0xECB3C2))
      VStack{
              if item.name == "Concimientos Basicos" {
                // Vista para Recomendaciones
                  
                          List(educacionListbasicosMateria){EducacionItem in
                              NavigationLink(destination: EducacionOpccionesBasicosDetails(item: EducacionItem)){
                                  HStack {
                                      EducacionItCircleView(item: EducacionItem)
                                      Text(EducacionItem.name)
                                          .font(.headline)
                                      
                                  }.padding(7)
                              }
                          }
                  
              } else {
                // Vista por defecto
                  VStack{
                          List(educacionListbasicosOficio){EducacionItem in
                              NavigationLink(destination: EducacionOpccionesTecnicosDetails(item: EducacionItem)){
                                  HStack {
                                      EducacionItCircleView(item: EducacionItem)
                                      Text(EducacionItem.name)
                                          .font(.headline)
                                      
                                  }.padding(7)
                              }
                          }
                  }
              }
          
      }
      .background(Color(hex: 0xECB3C2))
  }
}

struct EducacionOpccionesBasicosDetails: View {
  let item: EducacionItem

  var body: some View {
    VStack(alignment: .leading) {
      HStack {
          EducacionItCircleView(item: item)
          .padding(.trailing, 5)
        Text(item.name)
          .font(.largeTitle)
          .bold()
          .foregroundColor(Color(hex: 0x8C092F))
        Spacer()
      }.padding(.top)
      Spacer()
    }
    .background(Color(hex: 0xECB3C2))
      VStack{
              if item.name == "Primaria" {
                // Vista para Recomendaciones
                  //Text(item.name)
              } else {
                // Vista por defecto
                  //Text(item.name)
              }
          
      }
      .background(Color(hex: 0xECB3C2))
  }
}
struct EducacionOpccionesTecnicosDetails: View {
  let item: EducacionItem

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                EducacionItCircleView(item: item)
                    .padding(.trailing, 5)
                Text(item.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(hex: 0x8C092F))
                Spacer()
            }.padding(.top)
            Spacer()
        }
        .background(Color(hex: 0xECB3C2))
        VStack{
            if item.name == "Carpinteria" {
                // funcion stacs
                // contenedorStacks()
            } else if item.name == "Albañileria" {
                // Vista para Atencion Online
                //Text(item.name)
            } else if item.name == "Mecanica" {
                // Vista para Recomendaciones
                //Text(item.name)
            } else {
                // Vista por defecto
                //Text(item.name)
            }
            
        }
        .background(Color(hex: 0xECB3C2))
    }
}

func School() -> some View
{
    VStack{
        List(educacionListO){EducacionOption in
            NavigationLink(destination: EducacionMenuDetails(item: EducacionOption)){
                HStack {
                    EducacionOpCircleView(item: EducacionOption)
                    Text(EducacionOption.name)
                        .font(.headline)
                    
                }.padding(7)
            }
        }
    }
}
