//
//  CustomTextField.swift
//  chatApp
//
//  Created by Gulfweb on 12/28/21.
//

import SwiftUI

struct CustomTextField: View {
    let imageName:String
    let placeHolderText:String
    let isSecure:Bool
    @Binding var text:String
    
    var body: some View {
        VStack(spacing:12) {
            HStack {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(.darkGray))
                    
                    if isSecure{
                        SecureField(placeHolderText,text: $text)
                    }else{
                    TextField(placeHolderText,text: $text)
                    }
            }
            Divider()
                .background(Color(.darkGray))
        }
            
    }
}
