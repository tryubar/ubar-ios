//
//  Info.swift
//  tryubar
//
//  Created by Ranjan Biswas on 7/18/25.
//

import SwiftUI

struct Info: View {
    var body: some View {
        ZStack{
       
            
            Image("background_image")
                .resizable( )
                .ignoresSafeArea( )
                .background(.brown);
            
            VStack(alignment: .center, spacing: 5){
                
                Text("Jaca - Just a click away")
                    .foregroundStyle(.yellow)
                    .font(.title)
                    .padding();
                
                Image("team_spirit")
                    .resizable()
                    .cornerRadius(25)
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                
                Spacer();
                Text("You can find different services in the area based on your Zip code. Find professionals that provide you a wide range of services at an exceptionaly low price.")
                    .font(.title)
                    .padding();
                Spacer();
                Button("Done"){
                    
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.blue.mix(with: .white, by: 0.2))
            }.foregroundStyle(.black);
                
            
           
        }
    }
}

#Preview {
    Info()
}
