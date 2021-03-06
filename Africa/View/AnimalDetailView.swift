//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
            VStack(alignment:.center, spacing: 16) {
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.primary)
                    .padding(.vertical, 10)
                    .background(
                        Color.accentColor
                            .frame(height: 5)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                
                //Gallery
                Group() {
                    HeadingView(HeadingText: "Wilderness in pictures", HeadingImage: "photo.on.rectangle.angled")
                    InsertGalleryView(animal: animal)
                }
                
            }//:VStack
            .navigationBarTitle(
                "Learn about \(animal.name)",
                displayMode: .inline
            )
        }
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView() {
            AnimalDetailView(animal: animals[1])
        }
        
    }
}
