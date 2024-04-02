//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 02/04/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var height: CGFloat
    var roundedCorners: CGFloat
    
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
    ]
    
    var body: some View {
        TabView{
            ForEach(images, id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
            .frame(height: height)
            .clipShape(RoundedRectangle(cornerRadius: roundedCorners))
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(height: 320.0, roundedCorners: 10)
}
