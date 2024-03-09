//
//  Trastornos.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Trastornos: View {
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
                Text("Trastornos de alimentación")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .bold()
                    .padding(10)
                     
                Text("Los trastornos alimenticios son condiciones psicológicas sumadas a factores interpersonales, sociales y culturales, que perturban la conducta alimentaria de una persona y tienen consecuencias negativas para la salud física y mental. Los sentimientos de insuficiencia, depresión, ansiedad, soledad, así como las dificultades en las relaciones familiares y personales, o experimentar un evento traumático también pueden contribuir a los trastornos alimentarios.")
                    .padding(.bottom,20)
                    .multilineTextAlignment(.leading)
                



                Text("¿Sabías que los trastornos alimentarios son algunos de los trastornos más prevalentes en la adolescencia y que pueden conducir a una enfermedad crónica e incluso incapacitante? A menudo, los signos y síntomas aparecen entre los 14 y los 19 años, pero también pueden presentarse en adultos y niños. La mayoría de los trastornos alimentarios resultan de una profunda insatisfacción con el propio cuerpo, forma y peso que lleva a las personas a presentar determinados comportamientos poco saludables en relación al consumo de alimentos. Los trastornos alimentarios son, básicamente, condiciones psicológicas sumadas a factores interpersonales, sociales y culturales, que perturban la conducta alimentaria de una persona y tienen consecuencias negativas para la salud física y mental. Los sentimientos de insuficiencia, depresión, ansiedad, soledad, así como las dificultades en las relaciones familiares y personales, o experimentar un evento traumático también pueden contribuir a los trastornos alimentarios. Si crees que puedes estar sufriendo alguno de los trastornos que describimos a continuación, busca ayuda lo antes posible. ¡Cuanto antes comience el tratamiento, mejor!")
                    .multilineTextAlignment(.leading)
                
                    
                Text("Video referencia:")
                    .bold()
                    .font(.title2)
                    .padding()
                    .padding(.top,30)
                Text("https://www.youtube.com/watch?v=hx6B40ey-ss")
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
    Trastornos()
}
