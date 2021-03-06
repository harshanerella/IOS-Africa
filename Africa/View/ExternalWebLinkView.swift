//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox() {
            HStack() {
                Group() {
                    Image(systemName: "globe")
                    Text("WikiPedia")
                }
                Spacer()
                Group() {
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!, label: {
                        Text(animal.name)
                    })
                }
            }
            
            
        }
        
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
