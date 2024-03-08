//
//  Item.swift
//  Hackaton
//
//  Created by CEDAM01 on 07/03/24.
//

import SwiftUI

struct Item: View {
    
    var item: ItemList
    
    var body: some View {
        HStack{
            Text(item.label).padding(20)
        Spacer()
        }.padding(10).border(Color.gray).cornerRadius(10).padding(5)
    }
}

#Preview {
    Item(item: ItemList(id: 1, ruta: "Informate", label: "Informate"))
}
