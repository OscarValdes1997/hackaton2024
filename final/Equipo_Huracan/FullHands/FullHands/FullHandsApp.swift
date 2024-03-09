//
//  FullHandsApp.swift
//  FullHands
//
//  Created by CEDAM31 on 07/03/24.
//

import SwiftUI

@main
struct FullHandsApp: App {
    var body: some Scene {
        WindowGroup {
            //Prueba()
            //DonationViewController()
            //DonationFormView()
            //LoginView()
            //ContentView()
            ContentView()
                .environmentObject(PageManager())
        }
    }
}
