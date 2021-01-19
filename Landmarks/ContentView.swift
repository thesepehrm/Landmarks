//
//  ContentView.swift
//  Landmarks
//
//  Created by Sepehr Mohammadi on 1/18/21.
//

import SwiftUI
import UIKit

struct ContentView: View {

    var body: some View {
        VStack(alignment: .center) {
            MapUIView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)

            CircularImageView(image: Image("cntower"))
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y: -165)
                .padding(.bottom, -165)

            VStack(alignment: .center) {
                
                Text("CN Tower")
                    .font(.title)
                Text("Toronto, Canada")
                    .font(.subheadline)
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                Text("About CN Tower")
                    .font(.title2).padding(.bottom)
                
                Text(
                    """
                    The CN Tower is a 553.3 m-high concrete communications and observation tower located in Downtown Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name "CN" originally referred to Canadian National, the railway company that built the tower.
                    """)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
            }.padding()

            Spacer()
            Text("Landmarks App v1.0")
                .font(.caption)
                .foregroundColor(.gray)
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
