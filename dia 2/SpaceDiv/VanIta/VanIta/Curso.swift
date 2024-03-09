//
//  Curso.swift
//  VanIta
//
//  Created by CEDAM21 on 07/03/24.
//

import Foundation


struct Curso: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var duration: String
    var category: String
    var group: String
}
var listacursos = [
    Curso(name:"Lenguaje de señas 1",
          image: "crs1",
          description: "Curso básico de lenguaje de señas mexicano",
        duration: "12 min",
          category: "Curso",
          group: "LSM"),
    Curso(name:"Practica tu LSM",
          image: "crs4",
          description: "Practica con nocotros lop aprendido",
        duration: "25 min",
          category: "Laboratorio",
          group: "LSM"),
    Curso(name:"¿Sindrome de Down?",
          image: "crs3",
          description: "Formato introductorio al sindrome de Down y que implica",
        duration: "6 min",
          category: "Lectura",
          group: "Down"),
    Curso(name:"Cómo mantener una buena comunicación",
          image: "crs5",
          description: "Curso desarrollador de habilidades para una mejor comunicación con compañeros autistas",
        duration: "23 min",
          category: "Curso",
          group: "Autismo"),
    Curso(name:"Lenguaje de señas 2",
          image: "crs2",
          description: "Curso básico de lenguaje de señas mexicano",
        duration: "23 min",
          category: "Curso",
          group: "LSM")
    
]
