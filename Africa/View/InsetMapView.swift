//
//  InsetMapView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    //State is used to bind region as it may get update on changing map
    //CLLocationCoordinate2D -- Africa continent latitude longitude
    //MKCoordinateSpan -- ZOOM less the number more zoom IN
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(
                    destination: MapView()) {
                    HStack(alignment: .center, spacing: 5) {
                        Image(systemName: "mappin.circle")
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }//HStack
                    .padding(.all)
                    .background(Color.black
                                .opacity(0.4)
                                .cornerRadius(6)
                                )
                }//:Navigation
                .padding()
                , alignment: .topTrailing
                
                
            )
            .frame(height:256)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
