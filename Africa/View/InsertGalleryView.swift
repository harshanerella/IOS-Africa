//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import SwiftUI

struct InsertGalleryView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10) {
                ForEach(animal.gallery, id: \.self) {
                    animal in
                    Image(animal)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(16)
                }
            }
        }
    }
}

struct InsertGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
