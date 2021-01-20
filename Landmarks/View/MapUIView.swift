//
//  MapUIView.swift
//  Landmarks
//
//  Created by Sepehr Mohammadi on 1/19/21.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
}
}


struct MapUIView: View {
    var coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
        }
            
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
                    center: coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                )
    }
}

struct MapUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapUIView(coordinate: landmarks[0].locationCoordinate)
    }
}
