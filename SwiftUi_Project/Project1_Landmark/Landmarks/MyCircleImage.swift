//
//  MyCircleImage.swift
//  Landmarks
//
//  Created by Neha on 01/09/20.
//

// file created by File->New->File->User Interface->SwiftUI
import SwiftUI

struct MyCircleImage: View {
    var body: some View {
        Image("turtlerock") // image name which is added to the asset folder
            .clipShape(Circle()) // image is clipped to be circle shape
            .overlay(Circle().stroke(Color.red,lineWidth: 4)) // boarder
            .shadow(radius: 10)
    }
    
}

struct MyCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImage()
    }
}
