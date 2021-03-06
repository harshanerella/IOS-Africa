//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 03/03/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
       // 1. Locate the Json
    guard let url = self.url(forResource: file, withExtension: nil) else {
        fatalError("Failed to locate \(file) in bundle")
     }
        // 2. create property for the data
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Failed to load \(file) in bundle")
     }
    
        // 3. Create a Decoder
    let decoder = JSONDecoder()
    
        // 4. Create property for Decoded Data
    guard let loaded = try? decoder.decode(T.self, from: data) else {
        fatalError("Failed to decode \(file) from bundle")
    }
    return loaded
  }
}
