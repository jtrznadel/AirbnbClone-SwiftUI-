//
//  ListingFeatureStack.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 03/04/2024.
//

import SwiftUI

struct ListingFeatureStack: View {
    
    var image: String?
    var systemName: String?
    var title: String
    var subTitle: String?
    
    var body: some View {
        HStack {
            if let systemName = systemName {
                Image(systemName: systemName)
                    .padding(.horizontal, 10)
            } else if let image = image {
                Image(image)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            }
            
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.semibold)
                
                if let subTitle = subTitle {
                    Text(subTitle)
                        .foregroundStyle(.gray)
                        .font(.footnote)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(10)
    }
}

#Preview {
    ListingFeatureStack(systemName: "star", title: "Hosted by Michele", subTitle: "Superhost 5 years hosting")
}
