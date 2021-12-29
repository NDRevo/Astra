//
//  SettingsView.swift
//  Astra
//
//  Created by Noe Duran on 2/5/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
       
        Form{
            
            HStack{
                Image(systemName: "app.badge.fill")
                    .foregroundColor(.red)
                NavigationLink("Notifications", destination: NotificationsView())
            }
            HStack{
                Image(systemName: "app.fill")
                    .foregroundColor(.green)
                NavigationLink("App Icon", destination: AppIconView())
            }
       
  
            Section{
                HStack{
                    Image(systemName: "info.circle.fill")
                        .foregroundColor(.blue)
                    NavigationLink("About", destination: AboutView())
                }
                HStack{
                    Image(systemName: "dollarsign.square.fill")
                        .foregroundColor(.green)
                    NavigationLink("Tip Jar", destination: TipJarView())
                }
                HStack{
                    Image(systemName: "star.square.fill")
                        .foregroundColor(.yellow)
                    NavigationLink("Rate", destination: RateView())
                }
                
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
