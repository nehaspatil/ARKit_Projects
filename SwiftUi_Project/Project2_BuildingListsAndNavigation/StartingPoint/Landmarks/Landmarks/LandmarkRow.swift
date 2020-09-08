//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Neha on 04/09/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark :Landmark // landmark property of LandmarkRow
    
    var body: some View {
        HStack{
            landmark.image.resizable().frame(width:50,height:50)
            Text(landmark.name)
            Spacer()
           
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{ // makes it stack , list combines the view
            
        LandmarkRow(landmark:landmarkData[0]) // data is stored in json file
            
            
        LandmarkRow(landmark:landmarkData[1]) // data is stored in json file
        }
                .previewLayout(.fixed(width:300,height:70)) // changes the size of preview display window
        
        
        
    }
}
