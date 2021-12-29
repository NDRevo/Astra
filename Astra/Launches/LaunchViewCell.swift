//
//  LaunchViewCell.swift
//  Astra
//
//  Created by Noe Duran on 2/3/21.
//

import SwiftUI

struct LaunchViewCell: View, Hashable {
    
    //var launches: [Launch] = [
    
    var body: some View {
        ZStack{
            Image("starship")
                .resizable()
                .frame(height: 175)
                .blur(radius: 20)
                .cornerRadius(10)
            
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("STP-3")
                            .bold()
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Text("SpaceX")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Text("Feb. 20th 2021")
                        .font(.title)
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(alignment:.bottom){
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 20, height: 20)

                    Spacer()
                    Text("T - "+"02:45:10")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
        
    }
}

struct LaunchViewCell_Previews: PreviewProvider {
    static var previews: some View {
        LaunchViewCell()
    }
}
