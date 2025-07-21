//
//  ServiceView.swift
//  tryubar
// Displays all the services available
//  Created by Ranjan Biswas on 7/4/25.
//

import SwiftUI

struct ServiceView: View {
    
    private struct NamedFont: Identifiable {
        let name: String
        let font: Font
        var id: String { name }
        var ImageName: String
    }
    
    private let namedFonts: [NamedFont] = [
        NamedFont(name: "Tutorial Services", font: .largeTitle, ImageName: "tutor"),
        NamedFont(name: "Dog Walker", font: .largeTitle, ImageName: "dog"),
        NamedFont(name: "Bar Tender", font: .largeTitle, ImageName: "bar"),
        NamedFont(name: "Music Lessons", font: .largeTitle, ImageName: "music"),
        NamedFont(name: "Handy Man", font: .largeTitle, ImageName: "handyman")
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Image("background_image")
                .resizable( )
                .ignoresSafeArea( );
            
            VStack{
             
                ForEach(namedFonts) { namedFont in
                    ScrollView {
                        HStack{
                         
                            NavigationLink(destination: ServiceDetailView()) {
                                Image(namedFont.ImageName).resizable().aspectRatio(contentMode: .fill)
                                    .cornerRadius(5)
                                    .frame(width: 150, height: 50)
                                    .padding()
                            }
                            
                            Text(namedFont.name)
                                .frame(width: 150, height: 50).padding().aspectRatio(contentMode: .fill).foregroundColor(.red)
                                .padding()
                            
                        }.background(Rectangle()).foregroundColor(.white).shadow(radius:25).padding()
                    }
                }
                
                
                .navigationTitle("Services")
                
            }
        }
    }
}

#Preview {
    ServiceView()
}
