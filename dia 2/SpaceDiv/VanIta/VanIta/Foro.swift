//
//  Foro.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct Foro: View {
    enum PickerOption: String, CaseIterable {
        case LSM
        case Down
        case Autismo
        case Asperger
        case Sordos
    }

    @State private var selectedOption: PickerOption = .LSM
    @State private var isVarMode = false

    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
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
                            ForEach(listaforos, id: \.id) { foro in
                                NavigationLink(destination: QuestionsView(foros: foro)) {
                                    QuestionsView(foros: foro)
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
        }.navigationTitle("Foro")
    }
}
#Preview {
    Foro()
}
