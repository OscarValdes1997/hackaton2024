//
//  Bulllyng.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Bulllyng: View {
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
                Text("¿Qúe es el Bullyng?")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .bold()
                    .padding(10)
                     
                Text("El acoso escolar o bullying es la exposición que sufre un niño a daños físicos y psicológicos de forma intencionada y reiterada por parte de otro, o de un grupo de ellos, cuando acude al colegio. El acosador aprovecha un desequilibrio de poder que existe entre él y su víctima para conseguir un beneficio (material o no), mientras que el acosado se siente indefenso y puede desarrollar una serie de trastornos psicológicos que afectan directamente a su salud o incluso, en situaciones extremas, conductas autodestructivas.")
                    .padding(.bottom,20)
                    .multilineTextAlignment(.leading)
                



                Text("El bullying escolar se suele producir durante el recreo, en la fila para entrar a clase, en los baños, los pasillos, los cambios de clase, al entrar y salir del centro, en el transporte escolar o en el comedor. También puede ocurrir en el aula, cuando el profesor está escribiendo en la pizarra omientras está atendiendo a otros alumnos.")
                    .multilineTextAlignment(.leading)
                
                    
                Text("Video referencia:")
                    .bold()
                    .font(.title2)
                    .padding()
                    .padding(.top,30)
                Text("https://www.youtube.com/watch?v=YGMpU35TwNY")
                    .font(.title3)
                    .bold()
                    .multilineTextAlignment(.center)
                Text("https://www.youtube.com/watch?v=2PVPRIGbfIQ")
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
    Bulllyng()
}
