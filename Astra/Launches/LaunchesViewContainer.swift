//
//  LaunchesView.swift
//  Astra
//
//  Created by Noe Duran on 2/2/21.
//

import SwiftUI

struct LaunchesViewContainer: View {
    var body: some View {
        LaunchesView(numberOfLaunches: 0)
            .navigationTitle("Launches")
    }
}

struct LaunchesViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesViewContainer()
    }
}
