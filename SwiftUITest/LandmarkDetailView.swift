//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Juan Marcelo Cuevas on 2/5/20.
//  Copyright © 2020 Juan Marcelo Cuevas. All rights reserved.
//

import SwiftUI


import SwiftUI

struct LandmarkDetailView: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarkData[0])
    }
}
