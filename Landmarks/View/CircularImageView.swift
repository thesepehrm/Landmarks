//
//  CircularImageView.swift
//  Landmarks
//
//  Created by Sepehr Mohammadi on 1/19/21.
//

import SwiftUI

struct CircularImageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 3))

    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("cntower"))
            .frame(width: 200.0, height: 200.0)
    }
}
