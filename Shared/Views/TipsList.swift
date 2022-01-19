//
//  TipsList.swift
//  TrekrMultiPlatform
//
//  Created by Brad Kang on 2022-01-19.
//

import SwiftUI

struct TipsList: View {
    
    @ObservedObject var tips: TipStore
    
    var body: some View {
        List(tips, children: \.children) { tip in
            
            // If there are children on this particular tip...
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
    

}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
