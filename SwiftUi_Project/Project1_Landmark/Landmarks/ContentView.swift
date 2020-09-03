//
//  ContentView.swift
//  Landmarks
//
//  Created by Neha on 29/08/20.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        VStack{ // Vertical stack
            MapView() // created by using MapKit refer to MapView.swift file
                .frame(height:300)
            MyCircleImage() // refer to MyCircleImage.swift file
                .offset(y:-130) // vertical offset
                .padding(.bottom,-130) // padding from bottom
            Text("Turtle Rock")
                .font(.title)
            HStack{ // horizontal stack
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            
        }
        .padding() // for vertical stack spacing
        
        Spacer()
    }
            
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
       
    }
}
