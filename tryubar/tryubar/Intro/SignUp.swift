//
//  SignUp.swift
//  tryubar
//
//  Created by Ranjan Biswas on 7/18/25.
//

import SwiftUI

struct SignUp: View {
    
    
    
    @State private var email = ""
    @State private var password = ""
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var zipcode = ""
    @State private var optional = ""
    
    var body: some View {
        
        NavigationView { // For potential future navigation to other screens
            ZStack{
                
                Image("background_image")
                    .resizable( )
                    .ignoresSafeArea( )
                    .background(.brown);
                
                
                VStack {
                    
                    
                    TextField("First Name", text: $firstname) // Text field for username/email
                        .foregroundStyle(.black)
                        .font(.title2)
                        .autocapitalization(.none) // Disable auto-capitalization for emails
                        .disableAutocorrection(true) // Disable autocorrection
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    TextField("Last Name", text: $lastname) // Text field for username/email
                        .foregroundStyle(.black)
                        .font(.title2)
                        .autocapitalization(.none) // Disable auto-capitalization for usernames/emails
                        .disableAutocorrection(true) // Disable autocorrection
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    TextField("Zip Code", text: $zipcode) // Text field for username/email
                        .foregroundStyle(.black)
                        .font(.title2)
                        .autocapitalization(.none) // Disable auto-capitalization for usernames/emails
                        .disableAutocorrection(true) // Disable autocorrection
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    TextField("Email", text: $email) // Text field for email
                        .foregroundStyle(.black)
                        .font(.title2)
                        .autocapitalization(.none) // Disable auto-capitalization for usernames/emails
                        .disableAutocorrection(true) // Disable autocorrection
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    SecureField("Password", text: $password) // Secure field for password
                        .foregroundStyle(.black)
                        .font(.title2)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    Spacer();
                    
                    Button("Sign Up") {
                        // Perform sign-in authentication here
                        print("Attempting to sign in with: \(email) and \(password)")
                        
                        // Example of basic validation:
                        if email.isEmpty || password.isEmpty {
                            print("Please enter both email and password.")
                        } else {
                            // Here you'd typically call an authentication service
                            // For a real app, this would involve network requests and handling responses
                            print("Sign In successful!")
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    Spacer() // Pushes content to the top
                    
                }
                .padding()
                .navigationTitle("Sign up") // Navigation bar title (optional)
            }
        }
        
        
//        NavigationView { // For potential future navigation to other screens
//            ZStack{
//                
//                
//                ScrollView{
//                    
//                    
//                    VStack{
//                        
//                        
//                        Image("signup_apple")
//                            .aspectRatio(contentMode: .fit)
//                        
//                        
//                        Text("First Name")
//                            .foregroundStyle(.yellow)
//                            .font(.title)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.yellow).padding()
//                        
//                        
//                        TextField("Username or Email", text: $firstname) // Text field for username/email
//                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .autocapitalization(.none) // Disable auto-capitalization for usernames/emails
//                            .disableAutocorrection(true) // Disable autocorrection
//                            .padding()
//                        
//                        TextField("", text: $firstname)
//                            .background(Color.black.opacity(0.1))
//                            .frame(height: 75)
//                        //                        .font(.title)
//                        //                        .frame(height: 75)
//                        //                        .textFieldStyle(.roundedBorder)
//                        //                        .multilineTextAlignment(.center)
//                        //                        .foregroundColor(.yellow)
//                        //                        .border(Color.black, width: 2)
//                        
//                        
//                        
//                        Text("Last Name")
//                            .foregroundStyle(.yellow)
//                            .font(.title)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.black).padding()
//                        
//                        TextField("", text: $lastname)
//                            .font(.title)
//                            .frame(height: 75)
//                            .textFieldStyle(.roundedBorder)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(.black)
//                            .border(Color.black, width: 2)
//                        
//                        
//                        
//                        Text("Zip Code")
//                        
//                            .foregroundStyle(.yellow)
//                            .font(.title)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.black).padding()
//                        
//                        TextField("", text: $zipcode)
//                            .font(.title)
//                            .frame(height: 75)
//                            .textFieldStyle(.roundedBorder)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(.black)
//                            .border(Color.black, width: 2)
//                        
//                        
//                        Text("Email")
//                            .foregroundStyle(.yellow)
//                            .font(.title)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white).padding()
//                        
//                        TextField("", text: $email)
//                            .font(.title)
//                            .frame(height: 75)
//                            .textFieldStyle(.roundedBorder)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(.black)
//                            .border(Color.black, width: 2)
//                        
//                        Text("Password")
//                            .foregroundStyle(.yellow)
//                            .font(.title)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.black).padding()
//                        
//                        TextField("", text: $password)
//                            .font(.title)
//                            .frame(height: 75)
//                            .textFieldStyle(.roundedBorder)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(.black)
//                            .border(Color.black, width: 2)
//                        
//                        
//                        Button("Done"){
//                            
//                        }
//                        .font(.largeTitle)
//                        .buttonStyle(.borderedProminent)
//                        .tint(.blue.mix(with: .white, by: 0.2))
//                        
//                    }  .padding()
//                        .navigationTitle("Login") 
//                        .foregroundStyle(.yellow);
//                    
//                    
//                }
//            }
//        }
        
        
    }
}

#Preview {
    SignUp()
}
