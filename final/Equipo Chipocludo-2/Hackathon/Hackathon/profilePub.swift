//
//  profilePub.swift
//  Hackathon
//
//  Created by CEDAM25 on 07/03/24.
//

import SwiftUI

struct profilePub: View {
    @State private var showSheet: Bool = false
        
        var body: some View {
            
            Button("Present sheet") {
                self.showSheet = true
            }
                .sheet(isPresented: $showSheet) {
                    Text("Hello world!")
                        .presentationDetents([.medium, .large])
                }
            
        }
}

#Preview {
    profilePub()
}
