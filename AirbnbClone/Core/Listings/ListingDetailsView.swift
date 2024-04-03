//
//  ListingDetailsView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 02/04/2024.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingImageCarouselView(height: 320, roundedCorners: 0)

                HStack{
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 32, height: 32)
                            }
                            .padding(32)
                    }
                    
                    Spacer()
                    
                    HStack(){
                        Button{} label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundStyle(.black)
                                .background{
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 32, height: 32)
                                }
                        }
                        
                        Button{} label: {
                            Image(systemName: "heart")
                                .foregroundStyle(.black)
                                .background{
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 32, height: 32)
                                }
                                .padding(32)
                        }
                    }
                    
                }
                .padding(.vertical, 32)
                
            }
            VStack(alignment: .leading, spacing: 8){
                Text("The small Chalet & Dolomites Retreat")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Entire chalet in Italy")
                    .fontWeight(.semibold)
                
                Text("4 guests • 1 bedroom • 3 beds • 1 bath")
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            HStack {
                Spacer()
                
                VStack(alignment: .center) {
                    Text("4.98")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("★★★★★")
                        .font(.caption2)
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                VStack(alignment: .center) {
                    Text("Guest favorite")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                VStack(alignment: .center) {
                    Text("120")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Reviews")
                        .font(.footnote)
                        .underline()
                }
                .frame(maxWidth: .infinity)
                
                Spacer() // Right spacer for the last section
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .center)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
                    .padding(.horizontal)
                
            }
            
            ListingFeatureStack(image: "image-1", title: "Hosted by Michele", subTitle: "Superhost 5 years hosting")
                .padding(.top)
            
            Divider()
                .padding()
            
            ListingFeatureStack(systemName: "door.left.hand.open", title: "Self check-in", subTitle: "Check yourself in with the lockbox.")
            ListingFeatureStack(systemName: "medal", title: "Michele is Superhost", subTitle: "Superhosts are experienced, highly rated Hosts.")
            ListingFeatureStack(systemName: "calendar", title: "Free cancellation before April 6")
            
            Divider()
                .padding(.horizontal)
            
            Text("CasaMaran is small, elegant but cozy retreat for those seeking silence, quiet living and healthy air. The house consists of a large living area, where the sofa can turn into a comfortable double bed; a double bedroom; a room with a bunk bed and a single bed; between the living and sleeping areas is the bathroom. We will be happy to make ourselves available to give you the best advice on how to make the most of your vacation with us.")
                .padding()
                .fontWeight(.light)
            
            Divider()
                .padding(.horizontal)
            
            VStack(alignment: .leading){
                Text("Where you'll be")
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding()
        }
        .ignoresSafeArea()
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading, spacing: 10){
                        HStack(spacing: 5){
                            Text("644 zł")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("night")
                        }
                        Text("Apr 13 - 18")
                            .underline()
                            .fontWeight(.semibold)
                            .font(.footnote)
                    }
                    Spacer()
                    Button() {
                    } label :{
                        Text("Reserve")
                            .frame(width: 140, height: 40)
                    }
                    .controlSize(.large)
                    .background(.pink)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                }
                .padding(.horizontal)
            }
            .background(.white)

        }
        
    }
}

#Preview {
    ListingDetailsView()
}
