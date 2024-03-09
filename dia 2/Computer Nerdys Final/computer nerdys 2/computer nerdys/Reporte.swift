//
//  Reporte.swift
//  computer nerdys
//
//  Created by CEDAM03 on 07/03/24.
//

import SwiftUI

struct Reporte: View {
    @State var nombre: String = ""
    @State var direccion: String = ""
    @State var edad: String = ""
    @State var motivo: String = ""
    @State var correo: String = ""
    @State var telefono: String = ""
    @State var dia: String = ""
    @State var mes: String = ""
    @State var anio: String = ""
    @State var fecha: Date = Date()
    
    
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack
            {
                
                Image("Group 8")
                    .resizable()
                    .scaledToFit()
                    .padding(.top,-370)
                
                    Text("Levantar Reporte")
                        .font(.custom("Courier", size: 30))
                        .underline()
                        .padding(.top,-310)
                    
                    Text("Ingresar Datos")
                        .padding(.top,-250)
                    
                    Text("Nombre")
                        .padding(.top,-200)
                        .padding(.horizontal,-136)
                    
                    TextField("", text: $nombre)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal,60)
                        .padding(.top,40)
                        .padding(.top, -220)
                        .onChange(of: nombre, perform: {value in
                            print("nuevo valor")})
                    
                    Text("Direccion")
                        .padding(.top,-150)
                        .padding(.horizontal,-136)
                    
                    TextField("", text: $direccion)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal,60)
                        .padding(.top,40)
                        .padding(.top, -170)
                        .onChange(of: direccion, perform: {value in
                            print("nuevo valor")})
                    
                    
                    Text("Edad")
                        .padding(.top,-96)
                        .padding(.horizontal,-136)
                    
                    TextField("", text: $edad)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal,60)
                        .padding(.top,40)
                        .padding(.top, -110)
                        .onChange(of: edad, perform: {value in
                            print("nuevo valor")})
                    
                    Text("Motivo")
                        .padding(.top,-35)
                        .padding(.horizontal,-136)
                    TextField("", text: $motivo)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal,60)
                        .padding(.top,40)
                        .padding(.top, -40)
                        .onChange(of: motivo, perform: {value in
                            print("nuevo valor")})
                    
                    Text("Correo")
                        .padding(.top,60)
                        .padding(.horizontal,-136)
                    
                    TextField("", text: $correo)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal,60)
                        .padding(.top,40)
                        .padding(.top, 70)
                        .onChange(of: correo, perform: {value in
                            print("nuevo valor")})
                    
                    Text("Telefono")
                        .padding(.top,190)
                        .padding(.horizontal,-136)
                    
                    TextField("", text: $telefono)
                        .keyboardType(.default)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal,60)
                        .padding(.top,40)
                        .padding(.top, 200)
                        .onChange(of: telefono, perform: {value in
                            print("nuevo valor")})
                    
                    
                    DatePicker("Fecha Incidente:", selection: $fecha)
                        .padding(.top,400)
                    
                    NavigationLink {
                        Boton()
                    } label: {
                        Text("Reportar")
                            .foregroundColor(.white)
                            .frame(width: 200,height: 60)
                            .background(.orange)
                            .font(.custom("Courier", size: 20))
                            .cornerRadius(25)
                            .padding(.top,600)
                        
                        
                    }
                
            }
        }
        
    }
}
#Preview {
    Reporte()
}
