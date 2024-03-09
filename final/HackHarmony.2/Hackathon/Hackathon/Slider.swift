//
//  Slider.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//

import Foundation
import SwiftUI

struct SliderView: View {
    public let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    
    let images = ["Logo","Carrucel-2.1","carrucel-2", "Carrucel-3"]
    var body: some View {
        VStack
        {
            TabView(selection: $selection)
            {
                ForEach(0..<4){i in
                    Image ("\(images[i])").resizable().ignoresSafeArea()
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode:.always))
                .onReceive(timer, perform: { _ in
                    withAnimation
                    {
                        selection = selection < 4 ? selection + 1: 0
                    }
                })
        }.ignoresSafeArea()
    }
}
