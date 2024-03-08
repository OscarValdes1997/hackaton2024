//
//  Foro.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI

struct Foro: View {
    var body: some View {
        ZStack{
            Color.blue
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                Text("pantalla del foro")
            }
            .padding()
        }
    }
}

#Preview {
    Foro()
}
