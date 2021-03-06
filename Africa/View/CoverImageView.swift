//
//  CoverImageView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 03/03/21.
//

import SwiftUI

struct CoverImageView: View {
    //Mark Properties
    let images: [CoverImage] = Bundle.main.decode("covers.json")

    //Mark Body
    var body: some View {
        
        TabView() {
            ForEach(images) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//:Loop
            
        }//:Tab
        .tabViewStyle(PageTabViewStyle())
    }//:Body
    
}

//Mark Preview

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
