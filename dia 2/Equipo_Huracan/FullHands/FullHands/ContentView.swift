//
//  ContentView.swift
//  FullHands
//
//  Created by CEDAM31 on 07/03/24.
//

import SwiftUI
enum Page {
    case acopio
    case emisor
    case logout
}

class PageManager: ObservableObject{
    @Published var page: Page = .logout
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PageManager())
    }
}
struct ContentView: View {
    @EnvironmentObject var pageManager: PageManager

    var body: some View {
        switch pageManager.page {
        case .logout:
            LoginView()

        case .acopio:
            AcopioView()
            
        case .emisor:
            //DonationFormView
            DonadorView()
        }
    }
}

#Preview {
    ContentView()
}
