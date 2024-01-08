//
//  MapView.swift
//  BurgerMap
//
//  Created by Masahito Mori on 2024/01/04.
//

import SwiftUI
import MapKit

struct MapView: View {
    private let cameraPosition: MapCameraPosition = MapCameraPosition.camera(MapCamera(centerCoordinate: CLLocationCoordinate2D(latitude: 35.6581, longitude: 139.7017), distance: 2000))
    
    private let shops: [Shop] = [.mock1, .mock2, .mock3, .mock4, .mock5]
    
    var body: some View {
        Map(initialPosition: cameraPosition) {
            ForEach(shops) { shop in
                Annotation("", coordinate: shop.coordinate) {
                    Image("burger")
                }
                .annotationTitles(.hidden)
            }
        }
    }
}

#Preview {
    MapView()
}