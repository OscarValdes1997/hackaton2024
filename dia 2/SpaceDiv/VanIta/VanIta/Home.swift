//
//  Home.swift
//  VanIta
//
//  Created by CEDAM17 on 07/03/24.
//

import SwiftUI
import Foundation

struct Home: View {
    @State var currentTab: Tab = .Bienvenida
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        
        TabView(selection: $currentTab){
            Bienvenida()
                .tag(Tab.Bienvenida)
            Traductor()
                .tag(Tab.Traductor)
            Cursos()
                .tag(Tab.Cursos)
            Foro()
                .tag(Tab.Foros)
            Usuario()
                .tag(Tab.Usuario)
        }
        .overlay(
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.rawValue){tab in TabButton(tab: tab)
                }
                .padding(.vertical)
                .padding(.bottom, getSafeArea().bottom == 0 ? 5 : getSafeArea().bottom - 15)
                .background(Color.white)
            }
            , alignment: .bottom
        ).ignoresSafeArea(.all, edges: .bottom)
        
    }
    
    func TabButton(tab: Tab) -> some View{
        GeometryReader{proxy in
            Button(action: {
                withAnimation(.spring()){
                    currentTab = tab
                }
            }, label: {
                VStack(spacing: 0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab.rawValue)
                        .resizable()
                        .foregroundColor(.blue)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(Color.white)
                                        .frame(width: 60, height: 60)
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }
            })
        }
        .frame(height: 25)
    }
}

#Preview {
    Home()
}

enum Tab: String, CaseIterable{
    case Bienvenida = "house"
    case Cursos = "book.closed"
    case Traductor = "message.badge.waveform"
    case Foros = "bubble.left.and.text.bubble.right"
    case Usuario = "person"
    
    var Tabname: String{
        switch self {
        case .Bienvenida:
            return "Bienvenida"
        case .Cursos:
            return "Cursos"
        case .Traductor:
            return "Traductor"
        case .Foros:
            return "Foros"
        case .Usuario:
            return "Usuario"
        }
    }
}

extension View{
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as?
                UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
