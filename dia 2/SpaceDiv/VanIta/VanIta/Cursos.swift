//
//  Cursos.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct Cursos: View {
    enum PickerOption: String, CaseIterable {
        case LSM
        case Down
        case Autismo
        case Asperger
        case Sordos
    }

    @State private var selectedOption: PickerOption = .LSM
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Gradiente")
                    .resizable()
                    .ignoresSafeArea(.all)

                VStack(spacing: 0) {
                    SearchView()
                    
                    VStack(spacing: 16) {
                        Picker(selection: $selectedOption, label: Text("Picker Here")) {
                            ForEach(PickerOption.allCases, id: \.self) { option in
                                Text(option.rawValue)
                                    .tag(option)

                            }
                        }.pickerStyle(SegmentedPickerStyle())
                        
                    
                    }
                    .padding()
                    .padding(.top)

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            ForEach(listacursos, id: \.id) { curso in
                                NavigationLink(destination: CardsView(curso: curso)) {
                                    CardsView(curso: curso)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                }
                                .padding(5)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    Cursos()
}
