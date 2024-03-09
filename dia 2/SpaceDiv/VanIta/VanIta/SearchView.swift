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
                .background(Color.white)
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 2)
                )
                .cornerRadius(10)
                .frame(width: 350, height: 40)
            }
        }
    }
}

#Preview {
    SearchView()
}
