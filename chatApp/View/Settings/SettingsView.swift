//
//  SettingsView.swift
//  chatApp
//
//  Created by Gulfweb on 4/18/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
                
            
            VStack(spacing:32){
                
                Spacer()
                    .frame(height:0.1)
                
                SettingHeaderView()
                
                VStack (spacing:1){
                    ForEach(SettingsCellViewModel.allCases,id:\.self){ viewModel in
                        SettingCell(viewModel:viewModel)
                    }
                }
                
                Button(action: {
                    print("Handle Log Out here ..")
                }, label: {
                    Text("Log Out")
                        .foregroundColor(Color.red)
                        .font(.system(size: 16,weight: .semibold))
                        .frame(width:UIScreen.main.bounds.width,height: 50)
                        .background(Color.white)
                })
                
                Spacer()
            }
        }
            
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


