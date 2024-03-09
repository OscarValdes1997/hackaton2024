//
//  AcopioView.swift
//  FullHands
//
//  Created by CEDAM31 on 08/03/24.
//

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let productsCount: Int
    let isDonationAccepted: Bool
}
let restaurants = [
    Restaurant(name: "Krispy Cream", address: "123 Main St.", productsCount: 15, isDonationAccepted: true),
    Restaurant(name: "KFC", address: "456 Elm St.", productsCount: 20, isDonationAccepted: true),
    Restaurant(name: "Domino's", address: "789 Oak St.", productsCount: 18, isDonationAccepted: false),
    Restaurant(name: "Carnias Miky", address: "321 Pine St.", productsCount: 25, isDonationAccepted: true)
]
import SwiftUI

struct RestaurantMenuView: View {
    let restaurants: [Restaurant]

    var body: some View {
        List {
            ForEach(restaurants) { restaurant in
                RestaurantRowView(restaurant: restaurant)
            }
        }
    }
}

struct RestaurantRowView: View {
    @EnvironmentObject var pageManager: PageManager
    let restaurant: Restaurant

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(restaurant.name)
                    .font(.headline)

                Text("\(restaurant.address)")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                if restaurant.isDonationAccepted {
                    HStack {
                        Text("Productos: \(restaurant.productsCount)")
                            .font(.subheadline)

                        Spacer()

                        Button(action: {
                            // Handle "Aceptar Donativo" logic here
                        }) {
                            Text("Aceptar Donativo")
                                .font(.subheadline)
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                    }
                } else {
                    Text("No acepta donaciones")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
            }
            .padding(.vertical, 10)

            Spacer()

            if restaurant.isDonationAccepted {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
            } else {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.red)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            // Handle restaurant selection logic here
        }
        Button("Log Out"){
            pageManager.page = .logout
                    }
                    .padding()
    }
}

struct RestaurantMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenuView(restaurants: restaurants)
    }
}

struct AcopioView: View {
    var body: some View {
        VStack{
            RestaurantMenuView(restaurants: restaurants)
        }
    }
}

#Preview {
    //AcopioView()
    AcopioView()
}
