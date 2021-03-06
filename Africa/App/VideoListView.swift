//
//  VideoListView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 03/03/21.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView() {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video)
                        .padding(.vertical, 10)
                }
            }//:List
            
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                videos.shuffle()
            }) {
                Image(systemName: "arrow.2.squarepath")
            })
            
        }//NavigationView
        
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
