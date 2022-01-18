//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Brad Kang on 2022-01-18.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationList(store: store)
            }
        }
    }
}
