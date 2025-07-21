//
//  RequestView.swift
//  tryubar
//
//  Created by Ranjan Biswas on 7/6/25.
//

import SwiftUI

struct RequestView: View {
    
    @State private var selectedDate = Date()
    @State private var enddDate = Date()
    @State private var notes = ""
    
    var body: some View {
     
        ZStack(alignment: .top) {
            Image("background_image")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                DatePicker("Start Time", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                    .foregroundStyle(.white)
                    .padding()
                DatePicker("End Time", selection: $enddDate, displayedComponents: [.date, .hourAndMinute]).padding()
                
                
                Text("Notes")
                
                TextField("", text: $notes)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .padding()
                    .border(Color.green, width: 1)
                
                //            Image("submit")
                //                .resizable()
                //                .frame(width: 250, height: 50)
                //                .aspectRatio(contentMode: .fit)
                Spacer();
                Button("Submit"){
                    
                }
                .font(.largeTitle)
                .buttonStyle(.borderedProminent)
                .tint(.blue.mix(with: .black, by: 0.2))
            }
         
            
        }
        .font(.title2)
        .foregroundStyle(.white)
        
    }
}

#Preview {
    RequestView()
}
