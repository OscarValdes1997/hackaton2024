//
//  Cursos.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct Cursos: View {
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color.white
                    .ignoresSafeArea(.all)
                VStack{
                    SearchView()
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 0){
                            ForEach(listacursos, id: \.id){curso in
                                NavigationLink {} label: {
                                    CardsView(curso: curso)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Cursos()
}
