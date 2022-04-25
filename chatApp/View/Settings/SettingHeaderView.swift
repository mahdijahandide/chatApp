//
//  SettingHeaderView.swift
//  chatApp
//
//  Created by Gulfweb on 4/18/22.
//

import SwiftUI

struct SettingHeaderView: View {
    var body: some View {
        HStack{
            Image("venom")
                .resizable()
                .scaledToFill()
                .frame(width: 63, height: 63)
                .clipShape(Circle())
                .padding(.leading)
                .background()
            
            VStack(alignment:.leading,spacing: 4){
                Text("Mehdi Jahandide")
                    .font(.system(size: 18))
                
                Text("Available")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .frame(height:80)
        .background(Color.white)
    }
}
