//
//  Publicar.swift
//  computer nerdys
//
//  Created by CEDAM03 on 08/03/24.
//

import SwiftUI
import PhotosUI


struct Publicar: View {
    @State var problematica: String = ""
    @State var descrip: String = ""
    @State var photoSelection:PhotosPickerItem?
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    Text("Informa de una problematica")
                        .font(.largeTitle)
                    
                    TextField("Problematica", text: $problematica)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding(8)
                        .font(.headline)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(6)
                        .padding(.horizontal, 60)
                        .padding(.top, 40)
                        .onChange(of: problematica, perform: { value in
                            print("New value \(value)")
                        })
                    
                    Spacer()
                    Form{
                        Section{
                            VStack{
                                Image(systemName: "photo.on.rectangle.angled")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:120, height: 120)
                                Divider()
                                PhotosPicker(selection: $photoSelection, matching: .images, photoLibrary: .shared()){
                                    Label("Selecciona una foto", systemImage: "photo.on.rectangle.angled")
                                }
                            }
                        }
                    }
                    VStack {
                        TextField("Descripcion Problematica", text: $descrip)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                            .padding(8)
                            .font(.headline)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(6)
                            .padding(.horizontal, 60)
                            .padding(.top, 40)
                            .onChange(of: descrip, perform: { value in
                                print("New value \(value)")
                            })
                        Spacer()
                    }
                    
                    VStack {
                        NavigationLink{
                            Bloc()
                        } label:{
                            Text("Publicar".uppercased())
                                .font(.custom("Montserrat", size: 20))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(40)
                                .shadow(radius:50)
                        }
                    }
                    
                }
                
            }
            
        }
    }
}
#Preview {
    Publicar()
}
