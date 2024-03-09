//
//  Stacks.swift
//  Hackathon
//
//  Created by CEDAM 13 on 08/03/24.
//

import Foundation
import WebKit
import SwiftUI

func primerStack() -> some View {
    VStack {
        Text("Como dar RCP")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
        VideoView(videoURL: "https://www.youtube.com/watch?v=YO3NrDvbHww")
            .frame(height: 150)
            .padding()
        
    }
}

func segundoStack() -> some View {
    VStack {
        Text("¿Qué hacer en caso de asfixia?")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
        VideoView(videoURL: "https://www.youtube.com/watch?v=zL9GBoMrFc8")
            .frame(height: 150)
            .padding()
        
    }
}

func tercerStack() -> some View {
    VStack {
        Text("¿Qué hacer en caso de emorragia?")
            .bold()
            .textCase(.uppercase)
            .multilineTextAlignment(.leading)
        // Otros componentes del primer stack
            //.padding()
        VideoView(videoURL: "https://www.youtube.com/watch?v=GgPbGbVZDRs")
            .frame(height: 150)
            .padding()
        
    }
}



struct VideoView: View {
    let videoURL: String
    
    var body: some View {
        VStack {
            WebView(urlString: videoURL)
        }
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}



func contenedorStacks() -> some View {
    VStack {
        
        primerStack()
        segundoStack()
        tercerStack()
    }
}
