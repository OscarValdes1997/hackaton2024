//
//  Drogas.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Drogas: View {
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
                Text("Los Adolescentes: El Alcohol y las Drogas")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .bold()
                    .padding(10)
                     
                Text("Los adolescentes pueden estar comprometidos en varias formas con el alcohol y las drogas legales o ilegales. Es común el experimentar con el alcohol y las drogas durante las adolescencia. Desgraciadamente, con frecuencia los adolescentes no ven la relación entre sus acciones en el presente y las consecuencias del mañana. Ellos tienen la tendencia a sentirse indestructibles e inmunes hacia los problemas que otros experimentan. El uso del alcohol o del tabaco a una temprana edad aumenta el riesgo del uso de otras drogas más tarde. Algunos adolescentes experimentan un poco y dejan de usarlas o continúan usándolas ocasionalmente sin tener problemas significativos. Otros desarrollarán una dependencia, usarán luego drogas más peligrosas y se causarán daños significativos a ellos mismos y posiblemente a otros. La adolescencia es el tiempo de probar cosas nuevas. Los adolescentes usan el alcohol y las otras drogas por varias razones, incluyendo la curiosidad, para sientirse bien, para reducir el estrés, para sentirse personas adultas o para pertenecer a un grupo. Es difícil el poder determinar cuáles de los adolescentes van a experimentar y parar ahí, y cuáles van a desarrollar problemas serios. Los adolescentes que corren el riesgo de desarrollar problemas serios con el alcohol y las drogas incluyen aquellos:")
                    .padding(.bottom,20)
                    .multilineTextAlignment(.leading)
                
                VStack(alignment:.leading) {
                    Text("• Con un historial familiar de abuso de substancias")
                    Text("• Que están deprimidos")
                    Text("• Que sienten poco amor propio o autoestima")
                    Text("• Que sienten que no pertenecen y que están fuera de la corriente")
                }.italic()
                    .padding()
                

    
                    .multilineTextAlignment(.center)
                
                    
                Text("Video referencia:")
                    .bold()
                    .font(.title2)
                    .padding()
                    .padding(.top,30)
                Text("https://www.youtube.com/watch?v=SNjP27Tsrbw")
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
    Drogas()
}
