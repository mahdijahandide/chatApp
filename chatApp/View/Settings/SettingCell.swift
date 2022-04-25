//
//  SettingCell.swift
//  chatApp
//
//  Created by Gulfweb on 4/18/22.
//

import SwiftUI

struct SettingCell: View {
    let viewModel:SettingsCellViewModel
    var body: some View {
        VStack{
            
            HStack{
                //image
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width:22,height:22)
                    .padding(6)
                    .background(viewModel.backgroundColor)
                    .foregroundColor(Color.white)
                    .cornerRadius(6)
                //text
                Text(viewModel.title)
                    .font(.system(size: 15))
                
                Spacer()
                
                //arrow
                Image(systemName: "chevron.right")
                    .foregroundColor(Color.gray)
                
            }
            .padding([.top,.horizontal])
            
            Divider()
                .padding(.leading)
        }
        .background(Color.white)
    }
}


