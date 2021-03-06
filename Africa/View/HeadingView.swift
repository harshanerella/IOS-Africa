//
//  HeadingView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import SwiftUI

struct HeadingView: View {
    let HeadingText: String
    let HeadingImage: String
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            Image(systemName:  HeadingImage)
                .foregroundColor(.accentColor)
            Text(HeadingText)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
        }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(HeadingText: "Wilderness in pictures", HeadingImage: "photo.on.rectangle.angled" )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
            
    }
}
