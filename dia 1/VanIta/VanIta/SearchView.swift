//
//  SearchView.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct SearchView: View {
    @State private var textBusqueda: String = ""
    var body: some View {
        ZStack{
            HStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding(.leading)
                    TextField("Busca el curso de tu interés", text: $textBusqueda)
                        .padding()
                }
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 5)
                )
                .cornerRadius(10)
                .padding()
            }
        }
    }
}

#Preview {
    SearchView()
}
