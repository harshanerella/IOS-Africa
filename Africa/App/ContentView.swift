//
//  ContentView.swift
//  Africa
//
//  Created by Harsha Priyank, Nerella V on 28/02/21.
//

import SwiftUI

struct ContentView: View {
    //Mark Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        
        NavigationView {
            List {
                CoverImageView()
                ForEach(animals) {
                    animal in AnimalListView(animal: animal)
                }
            }
            .navigationTitle("Africa")
//            .navigationBarTitleDisplayMode(.large)
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
