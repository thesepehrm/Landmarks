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

    let places = [
        Place(name: "CN Tower", latitude: 43.64267322875117, longitude: -79.38702159548887)
    ]
struct MapUIView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 43.64267322875117, longitude: -79.38702159548887),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        )
    @State private var annotation =
    MKPointAnnotation(
    )
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places) {
            MapMarker(coordinate: $0.coordinate, tint: Color.blue)
        }
    }
}

struct MapUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapUIView()
    }
}
