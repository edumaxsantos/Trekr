//
//  Tip.swift
//  Trekr
//
//  Created by Eduardo Santos on 22/05/21.
//

import Foundation


struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
