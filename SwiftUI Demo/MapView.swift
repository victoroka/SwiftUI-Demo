//
//  MapView.swift
//  SwiftUI Demo
//
//  Created by Victor Oka on 11/07/19.
//  Copyright © 2019 Victor Oka. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    
    // This method required changes to MKMapView type
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        // Put the code to update the UIKit view
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        // Sets the map position for the preview
        uiView.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
