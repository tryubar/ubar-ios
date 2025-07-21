//
//  ContentView.swift
//  tryubar
//
//  Created by Ranjan Biswas on 6/30/25.
//  Gig Economy - on Demand Services App

import SwiftUI

struct ContentView: View {
    
   @State var showUbarInfo = false
    
    var body: some View {
        NavigationStack {
            
            
            ZStack(alignment: .center) {
                Image("background_image")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {
                    
                    Text("Jaca")
                        .fontWeight(.semibold)
                        .foregroundStyle(.yellow)
                        .font(.title)
                        .padding();
                    
                    Image("team_spirit")
                        .resizable()
                        .cornerRadius(25)
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Just a click Away")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white).padding()
                    
                    Spacer()
                    
                    NavigationLink("GO") {
                                        ServiceView()
                                    }
                    
            
                    
                    Spacer()
                    HStack{
                        Spacer()
                        Button{
                            showUbarInfo.toggle();
                            print(showUbarInfo);
                            
                        } label :{
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                        }.padding(.trailing)
                    }
                    

                 
                    
                }
            }.background(Rectangle()).foregroundColor(.red).shadow(radius:25)
             
        }
    }
}

func nextPage(){
    print("hello");
 
}

#Preview {
    ContentView()
}
