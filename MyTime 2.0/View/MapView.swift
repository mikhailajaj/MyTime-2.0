//
//  MapView.swift
//  MyTime
//
//  Created by Mikhail on 2020-11-18.
//
/***
 TODO:  1- get all the address from firebase
       2- change the address to lat and lng         // name + description! (image if possible)
       3- set the points to the map
       4- option to book an apointment
       5- send to View ->
 */
import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
