//
//  Anticonceptivos.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Anticonceptivos: View {
    var body: some View {
        ScrollView {
            HStack {
                HStack {
                    VStack {
                        Capsule()
                            .foregroundColor(.white)
                            .frame(width: 85,height: 45)
                            .padding(.leading,-140)
                            
                    }.padding(.top,-47)
                    
                    Image("personajessaludblanco")
                        .resizable()
                        .frame(width: 35,height: 75)
                        .padding(.top,-20)
                        .padding(.leading, -40)
                    
                    Text("Salud")
                        .frame(width: 100)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.leading, -15)
                    
                }.padding(.bottom,-20)
                    .padding(.top,30)
                    .frame(width:800,height: 150)
                .background(.pink)
            }
            
            VStack {
                Text("Los métodos anticonceptivos")
                    .font(.title2)
                    .bold()
                    .padding(10)
                Text(" Los métodos anticonceptivos se definen como las estrategias para impedir o reducir de forma significativa las probabilidades de que se produzca la fecundación y, con ello, el embarazo, al mantener relaciones sexuales con penetración vaginal.")
                    .padding(.bottom,40)
                    .multilineTextAlignment(.leading)

                
                Text("¿Cómo se clasifican los métodos anticonceptivos?")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .multilineTextAlignment(.center)


                Text(" Existen multitud de maneras de clasificar los métodos anticonceptivos. Por ejemplo, se pueden tener en cuenta los diferentes parámetros que se comentan a continuación:")
                    .multilineTextAlignment(.leading)
                
                VStack(spacing:10) {
                    Text("• Masculinos o femeninos")
                    Text("• Orales o no orales")
                    Text("• Hormonales o no hormonales")
                    Text("• Temporales o permanentes")
                    Text("• Reversibles o irreversibles")
                        
                }.italic()
                    .padding()
                    
                Text("Video referencia:")
                    .bold()
                    .font(.title2)
                    .padding()
                    .padding(.top,30)
                Text("https://www.youtube.com/watch?v=NdEKzlIittk")
                    .font(.title3)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Footer()
                   
                
            }//VS
            .padding(.horizontal,230)
            
        }//SC
        .ignoresSafeArea()
    }
}

#Preview {
    Anticonceptivos()
}
