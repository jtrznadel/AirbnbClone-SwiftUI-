//
//  ProfileOptionView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 04/04/2024.
//

import SwiftUI

struct ProfileOptionView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack{
            HStack(spacing: 16){
                Image(systemName: imageName)
                    .imageScale(.large)
                
                Text(title)
                    .font(.title3)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionView(imageName: "gear", title: "Setting")
}
