//
//  configuraciones.swift
//  EquAI
//
//  Created by CEDAM 12 on 07/03/24.
//

//
import SwiftUI
import Foundation

struct SettingRowView : View {
    var title : String
    var systemImageName : String
    
    var body : some View {
        HStack (spacing : 15) {
            Image(systemName: systemImageName)
            Text (title)
        }
    }
}

struct configuraciones: View {
    
    
    
    var body: some View {
        NavigationView {
           List {
              // first section
              Section(header: Text("Cuenta")) {
                  NavigationLink(destination: EmptyView(), label: {
                     SettingRowView(title: "Mi cuenta",
                     systemImageName: "person")
                  })
              }

              // second section
              Section(header: Text("Mas opciones")) {
                   NavigationLink(destination: EmptyView(), label: {
                      SettingRowView(title: "Configuraciones",
                      systemImageName:"dollarsign.circle")
                   })
                         
                   NavigationLink(destination: EmptyView(), label: {
                       SettingRowView(title: "Avisos",
                       systemImageName: "newspaper")
                   })
              }
              // and more sections below ....
           }
           .navigationTitle(Text("Settings"))
        }
    }
}
#Preview {
    configuraciones()
}
