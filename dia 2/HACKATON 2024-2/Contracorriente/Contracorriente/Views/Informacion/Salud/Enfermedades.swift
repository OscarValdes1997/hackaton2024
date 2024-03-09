//
//  Enfermedades.swift
//  Contracorriente
//
//  Created by CEDAM 11 on 08/03/24.
//

import SwiftUI

struct Enfermedades: View {
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
                Text("Enfermedades de transmisión sexual")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .bold()
                    .padding(10)
                Text("¿Qué son las enfermedades de transmisión sexual (ETS)?")
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                     
                Text("Las enfermedades de transmisión sexual (ETS) o infecciones de transmisión sexual (ITS) son infecciones que se transmiten de una persona a otra a través del contacto sexual. El contacto suele ser vaginal, oral y anal. Pero a veces pueden transmitirse a través de otro contacto físico íntimo involucrando el pene, vagina, boca o ano. Esto se debe a que algunas ETS, como el herpes y el VPH, se transmiten por contacto de piel a piel. Algunas ETS pueden transmitirse de una persona embarazada al bebé, ya sea durante el embarazo o al dar a luz. Otras formas en que las ETS pueden propagarse incluyen durante la lactancia, a través de transfusiones de sangre o al compartir agujas. Hay más de 20 tipos de ETS, incluyendo:")
                    .padding(.bottom,20)
                    .multilineTextAlignment(.leading)
                
                VStack(alignment:.leading) {
                    Text("• Clamidia")
                    Text("• Herpes genital")
                    Text("• Gonorrea")
                    Text("• VIH y sida")
                    Text("• VPH")
                    Text("• Ladillas")
                    Text("• Sífilis")
                    Text("• Tricomoniasis")
                        
                }.italic()
                    .padding()

                
                Text("¿Cuáles son los síntomas de las enfermedades de transmisión sexual?")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .multilineTextAlignment(.center)


                Text(" Las ETS no siempre presentan síntomas, o solo pueden causar síntomas leves. Por lo mismo, es posible tener una infección y no saberlo. E incluso sin síntomas, las ETS pueden ser dañinas y se pueden transmitir a través de las relaciones sexuales. Si tiene síntomas, estos pueden incluir:")
                    .multilineTextAlignment(.leading)
                
                VStack(alignment:.leading) {
                    Text("• Secreción inusual del pene o la vagina")
                    Text("• HLlagas o verrugas en el área genital")
                    Text("• Micción frecuente o dolorosa")
                    Text("• Picazón y enrojecimiento en el área genital")
                    Text("• Ampollas o llagas en o alrededor de la boca")
                    Text("• Olor vaginal anormal")
                    Text("• Picazón, dolor o sangrado anal")
                    Text("• Dolor abdominal")
                    Text("• Fiebre")
                        
                }.italic()
                    .padding()
                
                    
                Text("Video referencia:")
                    .bold()
                    .font(.title2)
                    .padding()
                    .padding(.top,30)
                Text("https://www.youtube.com/watch?v=1gbF4MjoOPE")
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
    Enfermedades()
}
