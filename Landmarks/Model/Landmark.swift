//
//  Landmark.swift
//  Landmarks
//
//  Created by Sepehr Mohammadi on 1/19/21.
//

import Foundation
import SwiftUI
import CoreLocation

class Landmark: Hashable, Codable, Identifiable {
    static func == (lhs: Landmark, rhs: Landmark) -> Bool {
        if lhs.id == rhs.id && lhs.name == rhs.name && lhs.park == rhs.park && lhs.state == rhs.state && lhs.description == rhs.description && lhs.coordinates == rhs.coordinates && rhs.imageName == lhs.imageName {
            return true
        }
        return false
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(park)
        hasher.combine(state)
        hasher.combine(description)
        hasher.combine(imageName)
        hasher.combine(coordinates)
    }

    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
    }
    
}
