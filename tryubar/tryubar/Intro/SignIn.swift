import SwiftUI

struct LoginScreen: View {
    @State private var username: String = "" // State variable to store the username/email
    @State private var password: String = "" // State variable to store the password

    var body: some View {
        NavigationView { // For potential future navigation to other screens
            ZStack{
                
                Image("background_image")
                    .resizable( )
                    .ignoresSafeArea( )
                    .background(.brown);
                
                VStack {
                    
                    
                    TextField("Email", text: $username) // Text field for email
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
            
                    Button("Sign In") {
                        // Perform sign-in authentication here
                        print("Attempting to sign in with: \(username) and \(password)")
                        
                        // Example of basic validation:
                        if username.isEmpty || password.isEmpty {
                            print("Please enter both username/email and password.")
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
                .navigationTitle("Login") // Navigation bar title (optional)
            }
          
        }
    }
}

#Preview {
    LoginScreen()
}
