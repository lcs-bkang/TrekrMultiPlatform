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
            
            HStack {
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()

            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {
                
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }
            .padding(.horizontal)

            
            
            // Conditionally show the travel advisories
            if !location.advisory.isEmpty {
                
                // Show location's more text without bottom padding
                
                Text(location.more)
                    .padding(.horizontal)
                
                // show something
                
                HStack {
                    
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.horizontal, .vertical])
            } else {
                // Show only the location's more text with bottom padding included
                
                Text(location.more)
                    .padding([.horizontal, .bottom])
            }
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
