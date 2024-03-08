//
//  ContentView.swift
//  FullHands
//
//  Created by CEDAM31 on 07/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 150)
        }
    }

} 
#Preview {
    ContentView()
}
