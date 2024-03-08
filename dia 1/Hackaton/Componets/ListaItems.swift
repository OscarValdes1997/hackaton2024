//
//  ListaItems.swift
//  Hackaton
//
//  Created by CEDAM01 on 07/03/24.
//

import SwiftUI

struct ListaItems: View {
    var body: some View {
            List{
                    Item(item: ItemList(id: 1, ruta: "informate", label: "Informate"))
                    Item(item: ItemList(id: 1, ruta: "informate", label: "Numeros de apoyo"))
                    Item(item: ItemList(id: 1, ruta: "informate", label: "Personal juridico"))
            }
        }
}

#Preview {
    ListaItems()
}
