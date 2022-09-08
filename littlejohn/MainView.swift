//
//  MainView.swift
//  littlejohn
//
//  Created by Dante Gil-Marin on 8/25/22.
//

import SwiftUI
import CoreLocationUI

struct MainView: View {
  @StateObject var locationManager = LocationManager()
  @StateObject var cardLibrary = CardLibrary()
    var body: some View {
      VStack {
        if let location = locationManager.location {
          Text("Your location: \(location.latitude), \(location.longitude)")
        }
        
        LocationButton {
          //locationManager.requestLocation()
        }
        
        Text("Number of passes: \(cardLibrary.passes?.count)")
        
      }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
