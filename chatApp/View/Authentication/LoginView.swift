//
//  LoginView.swift
//  chatApp
//
//  Created by Gulfweb on 12/28/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email=""
    @State private var password=""
    
    var body: some View {
        NavigationView{
            VStack {
                VStack(alignment:.leading,spacing: 23){
                    HStack{Spacer()}
                    Text("Hello.")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .bold()
                    
                    VStack(spacing:16){
                        CustomTextField(imageName: "envelope", placeHolderText: "Email", isSecure: false, text: $email)
                        
                        CustomTextField(imageName: "lock", placeHolderText: "Password", isSecure: true, text: $password)
                    }
                    .padding([.top,.horizontal],25)
                    HStack{
                        Spacer()
                        NavigationLink(destination: Text("Destination"), label:{ Text("Forgot Password?")})
                    }
                    
                }
                .padding()
            .padding(.top,-65)
                
                Button(action: {},
                       label:{ Text("Sign In")
                        .frame(width: 350, height: 50, alignment: .center)
                        .foregroundColor(Color(.white))
                        .background(.blue)
                        .clipShape(Capsule())
                })
                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
                
               Spacer()
                NavigationLink(destination: RegisterView(), label: {
                    HStack{
                        Text("Don't have an account?")
                            .font(.system(size: 16))
                        Text("Sign Up")
                            .bold()
                    }
                })
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


