//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Sepehr Mohammadi on 1/20/21.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark : Landmark

    var body: some View {
        VStack(alignment: .center) {
            MapUIView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)

            CircularImageView(image: landmark.image)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y: -165)
                .padding(.bottom, -165)

            VStack(alignment: .center) {
                
                Text(landmark.name)
                    .font(.title)
                Text(landmark.state)
                    .font(.subheadline)
            }.padding()
            
            Divider()
            
            ScrollView() {
                HStack {
                    Spacer()
                }
                Text("About \(landmark.name)")
                    .font(.title2).padding(.bottom)
                
                Text(landmark.description)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
            }.padding()

            Spacer()
            Text("Landmarks App v1.1")
                .font(.caption)
                .foregroundColor(.gray)
            
                
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[0])
    }
}
