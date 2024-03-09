//
//  SliderView.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//

import Foundation

struct SliderView: View {
    public let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    
    let images = ["img-1","img-3","img-1"]
    var body: some View {
        VStack
        {
            TabView(selection: $selection)
            {
                ForEach(0..<3){i in
                    Image ("\(images[i])").resizable().ignoresSafeArea()
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode:.always))
                .onReceive(timer, perform: { _ in
                    withAnimation
                    {
                        selection = selection < 3 ? selection + 1: 0
                    }
                })
        }.ignoresSafeArea()
    }
}
