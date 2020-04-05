//
//  Landmark.swift
//  SwiftUITest
//
//  Created by Juan Marcelo Cuevas on 2/7/20.
//  Copyright © 2020 Juan Marcelo Cuevas. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}











//import SwiftUI
//import CoreLocation
//
//struct Landmark: Hashable, Codable {
//    var id: Int
//    var name: String
//    fileprivate var imageName: String
//    fileprivate var coordinates: Coordinates
//    var state: String
//    var park: String
//    var category: Category
//
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }
//
//    enum Category: String, CaseIterable, Codable, Hashable {
//        case featured = "Featured"
//        case lakes = "Lakes"
//        case rivers = "Rivers"
//    }
//}
//

