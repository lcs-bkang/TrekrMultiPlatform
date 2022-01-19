//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Brad Kang on 2022-01-19.
//

import Foundation

struct Tip: Decodable, Identifiable {
    var id = UUID()
    let text: String
    let children: [Tip]?
}
