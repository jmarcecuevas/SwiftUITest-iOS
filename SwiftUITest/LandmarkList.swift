//
//  LandmarkList.swift
//  SwiftUITest
//
//  Created by Juan Marcelo Cuevas on 2/7/20.
//  Copyright © 2020 Juan Marcelo Cuevas. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .background(NavigationConfigurator { nc in
                    nc.navigationBar.barTintColor = .red
                    nc.navigationBar.tintColor = .white
                    nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
            })
            .navigationBarTitle(Text("Landmarks"), displayMode: .inline)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
