//
//  EditProfileView.swift
//  chatApp
//
//  Created by Gulfweb on 4/25/22.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullName="Mehdi Jahandide"
    var body: some View {
        ZStack{
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(alignment:.leading){
                
                VStack{
                    Divider()
                    //image , edit , text
                    HStack{
                        //image , edit
                        VStack{
                            Image("venom")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(Circle())
                            
                            Button(action: {
                              print("Edit profile here .. ")
                            }, label: {
                              Text("Edit")
                            })
                        }
                        //text
                        Text("Enter your name or change your profile photo")
                            .fixedSize(horizontal: false, vertical: true)
                            .lineLimit(nil)
                            .foregroundColor(Color.gray)
                            .font(.system(size: 16))
                            .padding([.leading,.bottom])
                        Spacer()
                    }
                    .padding([.horizontal,.vertical])
                    
                    Divider()
                        .padding(.horizontal)
                    TextField("",text: $fullName)
                        .padding()
                    Divider()
                    
                }
                .background(Color.white)
                
                Spacer()
                    .frame(height:40)
                
                Text("Status")
                    .foregroundColor(Color.gray)
                    .padding()
                
                NavigationLink(destination: StatusSelectorView(), label: {
                    VStack{
                        Divider()
                        HStack{
                            Text("At the movies")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding(.horizontal)
                        Divider()
                    }
                    .background(Color.white)
                })
                
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
