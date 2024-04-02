//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 02/04/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    
    
    var body: some View {
        VStack(spacing: 8){
            //images
            
            ListingImageCarouselView(height: 320, roundedCorners: 10)
            
                //listing details
                HStack(alignment: .top){
                    //details
                    VStack(alignment: .leading, spacing: 4){
                        Text("Chalet in Lozzo di Cadore")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        
                        Text("The Sunny House - chalet in the heart of Dolomites")
                            .lineLimit(1)
                            .foregroundStyle(.gray)
                        
                        Text("Hosted by Ernesto")
                            .foregroundStyle(.gray)
                        
                        Text("Apr 7 - 12")
                            .foregroundStyle(.gray)
                        
                        HStack(spacing: 4){
                            Text("595 zł")
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                            
                            Text("night")
                                .foregroundStyle(.black)

                            
                            Text("•")
                                .foregroundStyle(.gray)
                            
                            Text("2,974 zł total")
                                .foregroundStyle(.gray)
                                .underline()
                        }
                    }
                    
                    Spacer()
                    
                    //rating
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        
                        Text("4.95 (171)")

                    }
                    .foregroundStyle(.black)

                }
            }
            .padding(.all, 20)
        }
    }

#Preview {
    ListingItemView()
}
