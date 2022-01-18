//
//  LocationList.swift
//  TrekrMultiPlatform
//
//  Created by Brad Kang on 2022-01-18.
//

import SwiftUI

struct LocationList: View {
    
    @ObservedObject var store: LocationStore
    
    var body: some View {
        // Iterate over the list of locations in the data store
        List(store.places) { location in
            
            // Create a navigation link leading to the detail view
            // Great example of abstraction
            NavigationLink(destination: LocationDetail(location: location)) {
                
                HStack {
                    
                    Image(location.heroPicture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading) {
                        Text(location.name)
                        Text(location.country)
                            .font(.subheadline)
                    }
                }
            }
        }
        .navigationTitle("Locations")
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            
            LocationList(store: testStore)

        }
    }
}
