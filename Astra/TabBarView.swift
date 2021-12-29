//
//  TabBarView.swift
//  Astra
//
//  Created by Noe Duran on 2/2/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NavigationView{
                LaunchesViewContainer()
            }
            .tabItem {
                Image(systemName: "paperplane.fill")
                Text("Launches")
            }
            
   
            WikiView()
                .tabItem {
                    Image(systemName: "books.vertical" )
                    Text("Wiki")
                }
            NavigationView{
                SettingsViewContainer()
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
