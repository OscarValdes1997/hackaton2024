//
//  RowView.swift
//  Hackaton
//
//  Created by CEDAM01 on 07/03/24.
//

import SwiftUI

struct RowView: View {
    var item: ItemLista
    var body:some View {
        HStack{
            Text(item.label).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100).background(Color.red)
        }
    }
}


#Preview {
    RowView(item: ItemLista(id: 1, ruta: "HOLA", label: "Informacion"))
}
