//
//  ContentView.swift
//  Landmarks
//
//  Created by Sepehr Mohammadi on 1/18/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack(alignment: .center) {
            CircularImageView()
            
            Text("CN Tower")
                .font(.title)
            Text("Toronto, Canada")
                .font(.subheadline)
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
