//
//  Cards.swift
//  VanIta
//
//  Created by CEDAM21 on 07/03/24.
//

import SwiftUI

struct QuestionsView: View {
    @State private var heartColor: Color = .white
    var foros : Foros
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                HStack(){
                    Image(foros.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(foros.name)
                        .font(.system(size: 17))
                        .fontWeight(.heavy)
                        .padding(.horizontal, 1)
                    
                    Text(foros.username)
                        .font(.system(size: 10))
                        .foregroundStyle(Color(.gray))
                        .fontWeight(.light)
                        .padding(.horizontal, 0.2)

                }.padding(.horizontal)
                    .padding(.top,20)
                
                ZStack(alignment: .bottomTrailing){
                    VStack(alignment: .leading){


                        Text(foros.question)
                            .font(.system(size: 13))
                            .fontWeight(.semibold)
                            .padding(0)
                        
                        Text(foros.time)
                            .font(.system(size: 15))
                            .foregroundStyle(Color.gray)
                            .padding(.top,5)
                            .padding(.horizontal, 1)
                    
                        HStack{
                            Button(action: { self.heartColor = (self.heartColor == .pink) ? .white : .pink
                                    }
                                    , label: {
                                Image(systemName: "heart.fill")
                                    .padding(.trailing, 0)
                                    .padding(.leading, 5)
                                    .padding(.top, 6)
                                    .padding(.bottom, 5)
                                    .foregroundColor(heartColor)
                                Text(foros.likes)
                                    .font(.system(size: 10))
                                    .padding(.leading, 0)
                                    .padding(.trailing, 10)
                                    .padding(.top, 0)
                                    .padding(.bottom, 0)
                                    .foregroundColor(Color.black)
                                         })
                                .background(
                                RoundedRectangle(cornerRadius: 20.0)
                                    .fill(.gray.opacity(0.5))
                            )
                            Button(action: {}
                                    , label: {
                                Image(systemName: "text.bubble.fill")
                                    .padding(.trailing, 0)
                                    .padding(.leading, 5)
                                    .padding(.top, 5)
                                    .padding(.bottom, 5)
                                    .foregroundColor(.white)
                                Text(foros.replies)
                                    .font(.system(size: 10))
                                    .padding(.leading, 0)
                                    .padding(.trailing, 10)
                                    .padding(.top, 0)
                                    .padding(.bottom, 0)
                                    .foregroundColor(Color.black)

                            })
                                .background(
                                RoundedRectangle(cornerRadius: 20.0)
                                    .fill(.gray.opacity(0.5))
                            )     
                            
                        }

                    }.padding()
                }
            }
            .frame(width: 370)
            .background(
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(.black, lineWidth: 0)
            )


        }//fin zstack
        .frame(width: 370)
        .padding(2)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .shadow(radius: 10)
    }
}


struct QuestionsView_Preview: PreviewProvider{
    static var previews: some View{
        QuestionsView(foros: listaforos[2])
    }
}
