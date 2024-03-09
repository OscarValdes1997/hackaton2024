//
//  Social.swift
//  EquAI
//
//  Created by CEDAM 12 on 07/03/24.
//

import SwiftUI
import MapKit

struct Social: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.48344215, longitude: -99.2458080208569), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        
        
        ZStack{
            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                .frame(width: 400, height: 900)
            
            Image(systemName: "pin.fill")
                .foregroundColor(.red)
        }
    }
}

#Preview {
    Social()
}
