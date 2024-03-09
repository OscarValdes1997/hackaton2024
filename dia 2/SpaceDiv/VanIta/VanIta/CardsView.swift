//
//  Cards.swift
//  VanIta
//
//  Created by CEDAM21 on 07/03/24.
//

import SwiftUI

struct CardsView: View {
    var curso: Curso
    var body: some View {
        ZStack {
            HStack(){
                Image(curso.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 190)
                    .cornerRadius(20)
                
                ZStack(alignment: .bottomTrailing){
                    VStack(alignment: .leading){

                        Text(curso.name)
                            .font(.system(size: 17))
                            .fontWeight(.heavy)
                            .padding(.horizontal, 1)
                        Text(curso.description)
                            .font(.system(size: 13))
                            .fontWeight(.semibold)
                            .padding(.horizontal, 1)
                        Text(curso.duration)
                            .font(.system(size: 15))
                            .foregroundStyle(Color.gray)
                            .padding(.horizontal, 1)
                        
                        HStack{
                            Text(curso.category)
                                .font(.system(size: 10))
                                .padding(5)
                                .background(
                                    RoundedRectangle(cornerRadius: 20.0)
                                        .fill(.blue.opacity(0.5))
                                )
                            Text(curso.group)
                                .font(.system(size: 10))
                                .padding(5)
                                .background(
                                    RoundedRectangle(cornerRadius: 20.0)
                                        .fill(.green.opacity(0.5))
                                )
                        }

                    }.padding()
                    .frame(width: 190)
                }
            }
            .frame(width: 370,height: 200)
            .frame(maxWidth: 370)
            .background(
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(.blue, lineWidth: 0)
            )


        }//fin zstack
        .frame(width: 370, height: 200)
        .padding(2)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .shadow(radius: 10)
    }
}

struct CardsView_Preview: PreviewProvider{
    static var previews: some View{
        CardsView(curso: listacursos[2])
    }
}
