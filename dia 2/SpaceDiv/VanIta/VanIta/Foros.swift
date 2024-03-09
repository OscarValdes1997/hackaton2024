//
//  Curso.swift
//  VanIta
//
//  Created by CEDAM21 on 07/03/24.
//

import Foundation


struct Foros: Identifiable {
    var id = UUID()
    var name: String
    var username: String
    var image: String
    var question: String
    var time: String
    var likes: String
    var replies: String
    var group: String
}
var listaforos = [
    Foros(name:"Bellington",
          username: "@bellingcook",
          image: "crs1",
          question: "¿Alguien sabe de recursos en línea para aprender la Lengua de Señas Mexicana? 🤓👆🏻",
          time: "Hace 12 min",
          likes: "120 likes",
          replies: "120 replies",
          group: "LSM"),
    Foros(name:"Jason Lee",
          username:"@jasonLee",
          image: "crs4",
          question: "Estoy buscando consejos sobre cómo mejorar la comunicación con mi hermano que tiene Síndrome de Down. ¿Alguien tiene experiencia en esto? 😁",
          time: "Hace 25 min",
          likes: "118 likes",
          replies: "120 replies",
          group: "LSM"),
    Foros(name:"Amanda",
          username:"@amandajune",
          image: "crs3",
          question: "¿Qué estrategias recomiendan para enseñar a niños con autismo a comunicarse utilizando la Lengua de Señas Mexicana? 🥹",
          time: "Hace 6 min",
          likes: "100 likes",
          replies: "120 replies",
          group: "LSM"),
    Foros(name:"Jacobo E",
          username:"@jacobo0o",
          image: "crs5",
          question: "¿Es común que los niños con autismo tengan dificultades para aprender la Lengua de Señas Mexicana en comparación con otros niños? 🥲",
          time: "Hace 23 min",
          likes: "95 likes",
          replies: "120 replies",
          group: "Down"),
    Foros(name:"Karla T",
          username:"@karlatovar",
          image: "crs2",
          question: "¿Alguien con experiencia en el campo puede compartir consejos sobre cómo abordar la enseñanza de la Lengua de Señas Mexicana a adultos con Síndrome de Down? 🫢",
          time: "Hace 23 min",
          likes: "34 likes",
          replies: "120 replies",
          group: "Autismo")
    
]
