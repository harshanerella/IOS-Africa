//
//  VideosModel.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
