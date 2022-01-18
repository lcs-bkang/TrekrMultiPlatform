//
//  LocationDetail.swift
//  TrekrMultiPlatform
//
//  Created by Brad Kang on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    
    // The location to show detailsa bout
    // A copy of an instace of a structure will be provided to this view
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(location: Location.example)
        }
    }
}
