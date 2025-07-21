//
//  ServiceDetailView.swift
//  tryubar
//
//  Created by Ranjan Biswas on 7/6/25.
//

import SwiftUI

struct ServiceDetailView: View {
    
    private struct ServieDetail: Identifiable {
        let name: String
        let font: Font
        var id: String { name }
        var ImageName: String
        var Price: String = ""
    }
    
    private let servicedFonts: [ServieDetail] = [
        ServieDetail(name: "Guitar", font: .largeTitle, ImageName: "guitar", Price: "50"),
        ServieDetail(name: "Piano", font: .largeTitle, ImageName: "piano", Price: "50"),
        ServieDetail(name: "Violin", font: .largeTitle, ImageName: "violin", Price: "50"),
        ServieDetail(name: "Drums", font: .largeTitle, ImageName: "drums", Price: "50"),
        ServieDetail(name: "Trumpet", font: .largeTitle, ImageName: "trumpet", Price: "50")
    ]
    
    var body: some View {
    
        ZStack(alignment: .top) {
            
            Image("background_image")
                .resizable( )
                .ignoresSafeArea( );
            
            VStack{
             
                ForEach(servicedFonts) { ServieDetail in
                    ScrollView {
                        HStack{
                         
                            NavigationLink(destination: RequestView()) {
                                Image(ServieDetail.ImageName).resizable().aspectRatio(contentMode: .fill)
                                    .cornerRadius(5)
                                    .frame(width: 150, height: 50)
                                    .padding()
                            }
                            
                            Text(ServieDetail.name + "- $" + ServieDetail.Price)
                                .frame(width: 150, height: 50).padding().aspectRatio(contentMode: .fill).foregroundColor(.black)
                                .fontWeight(.bold)
                                .padding()
                            
                        }.background(Rectangle()).foregroundColor(.white).shadow(radius:25).padding()
                    }
                }
                
                
                .navigationTitle("Service Details")
                
            }
        }
        
        
    }
}

#Preview {
    ServiceDetailView()
}
