//
//  Prueba.swift
//  FullHands
//
//  Created by CEDAM31 on 07/03/24.
//

import SwiftUI

struct Prueba: View {
    var body: some View {
      NavigationStack {
       VStack {
        NavigationLink("Go to screen 1", value: "1")
        Spacer().frame(height: 10)
        NavigationLink("Go to screen 2", value: "2")
      
       }.navigationDestination(for: String.self) { value in
        Text("This is screen number \(value)")
       }
          NavigationLink(destination: {
              LoginFormView_1()
          }, label: {
              Text("Login")
          })
      }
     }
}


#Preview {
    Prueba()
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
