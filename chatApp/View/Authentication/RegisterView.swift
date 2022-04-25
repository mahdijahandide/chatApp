//
//  RegisterView.swift
//  chatApp
//
//  Created by Gulfweb on 12/28/21.
//

import SwiftUI

struct RegisterView: View {
    @State private var email=""
    @State private var username=""
    @State private var fullname=""
    @State private var password=""
    var body: some View {
        VStack {
            VStack(alignment:.leading,spacing: 23){
                HStack{Spacer()}
                Text("Get started.")
                    .font(.largeTitle)
                    .bold()
                
                Text("Create your account")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .bold()
                
                VStack(spacing:35){
                    CustomTextField(imageName: "envelope", placeHolderText: "Email", isSecure: false, text: $email)
                    
                    CustomTextField(imageName: "person", placeHolderText: "Username", isSecure: false, text: $username)
                    
                    CustomTextField(imageName: "person", placeHolderText: "Fullname", isSecure: false, text: $fullname)
                    
                    CustomTextField(imageName: "lock", placeHolderText: "Password", isSecure: true, text: $password)
                }
                .padding([.top,.horizontal],25)
               
                
            }
            .padding()
        .padding(.top,-65)
            
            Button(action: {},
                   label:{ Text("Sign Up")
                    .frame(width: 350, height: 50, alignment: .center)
                    .foregroundColor(Color(.white))
                    .background(.blue)
                    .clipShape(Capsule())
            })
                .shadow(color: .gray, radius: 10, x: 0, y: 0)
            
           Spacer()
            NavigationLink(destination: LoginView(), label: {
                HStack{
                    Text("already have an account?")
                        .font(.system(size: 16))
                    Text("Sign In")
                        .bold()
                }
            })
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
