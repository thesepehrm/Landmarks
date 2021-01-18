//
//  CircularImageView.swift
//  Landmarks
//
//  Created by Sepehr Mohammadi on 1/19/21.
//

import SwiftUI

struct CircularImageView: View {
    var body: some View {
        Image("SampleImage")
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))

    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView()
    }
}
