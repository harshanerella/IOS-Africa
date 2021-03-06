//
//  VideoListItemView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import SwiftUI

struct VideoListItemView: View {
    let video: Video
    
    var body: some View {
        
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                    .cornerRadius(8)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
            }//ZStack
            VStack(alignment: .leading, spacing: 8) {
                Text(video.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor"))
                    
                Text(video.headline)
                    .font(.headline)
                    .fontWeight(.light)
            }
        }//HStack
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    static var videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: videos[1])
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
        
    }
}
