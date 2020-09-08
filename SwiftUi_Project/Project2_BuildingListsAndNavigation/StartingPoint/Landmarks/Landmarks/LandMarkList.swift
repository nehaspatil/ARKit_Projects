//
//  LandMarkList.swift
//  Landmarks
//
//  Created by Neha on 04/09/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        
       /* List{
            LandmarkRow(landmark:landmarkData[0]) // data is stored in json file
            LandmarkRow(landmark:landmarkData[1])
            
        }*/
        // instead of specifying fixed landmark[0/1] use a dynamic list
        NavigationView{
            
            List(landmarkData)
                {
                landmark in  NavigationLink(destination:LandmarkDetail(landmark:landmark)) // navigation link helps to browse the navigation view
                    {
                    
                    LandmarkRow(landmark:landmark)
                    
                }
                
                
            }
             /* List(landmarkData)
                  {
            
                      landmark in LandmarkRow(landmark:landmark)
            
            
                  }*/
        
        .navigationBarTitle(Text("Landmarks"))
        
        }

    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
