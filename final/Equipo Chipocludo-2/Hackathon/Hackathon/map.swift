//
//  map.swift
//  Hackathon
//
//  Created by CEDAM25 on 08/03/24.
//

import SwiftUI

struct map: View {
    @Binding var selection: String?

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("Dismiss") {
            // 2
            selection = nil
        }
        //.navigationTitle(title)
            
    }
}

#Preview {
    map()
}
