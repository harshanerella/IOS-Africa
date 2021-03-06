//
//  InsertFactView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 06/03/21.
//

import SwiftUI

struct InsertFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox() {
            TabView() {
                ForEach(animal.fact, id:\.self) {
                    fact in
                    Text(fact)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                
                    
            }
            .frame( minHeight: 160, idealHeight: 160, maxHeight: 160)
            .tabViewStyle(PageTabViewStyle())
          
            
        }
        
        
    }
}

struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertFactView(animal: animals[0])
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
