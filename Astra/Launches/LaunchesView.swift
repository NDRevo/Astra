//
//  LaunchesView.swift
//  Astra
//
//  Created by Noe Duran on 2/3/21.
//

import SwiftUI

struct LaunchesView: View {
    var launchBigCell: LaunchViewBigCell = LaunchViewBigCell()
    @State var launchCells: [Launch] = []
    var numberOfLaunches: Int
    
    var body: some View {

            ScrollView(){
                VStack{
                    NavigationLink(destination: WikiView()){
                        launchBigCell
                    }
//                    ForEach(launchCells, id: \.id){ launch in
//                        NavigationLink(destination: WikiView()){
//                            LaunchViewCell()
//                        }
//
//                    }
                    NavigationLink(destination: WikiView()){
                        LaunchViewCell()
                    }
                    NavigationLink(destination: WikiView()){
                        LaunchViewCell()
                    }
                    NavigationLink(destination: WikiView()){
                        LaunchViewCell()
                    }
                    NavigationLink(destination: WikiView()){
                        LaunchViewCell()
                    }
                    
                }
                .padding(.trailing, 10)
                .padding(.leading, 10)
            }
        
        

    }
}

struct LaunchesView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView(numberOfLaunches: 0)
    }
}
