//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 02/04/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {

        NavigationStack{
            
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
            } else{
                SearchBar()
                    .onTapGesture {
                        withAnimation(.snappy){
                            showDestinationSearchView.toggle()
                        }
                    }

                ScrollView{
                    LazyVStack(spacing: 32){
                        ForEach(1...10, id: \.self) { listing in
                            NavigationLink(value: listing){
                                ListingItemView()
                                    .frame(height: 460)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }.navigationDestination(for: Int.self) { listing in
                    ListingDetailsView()
                        .navigationBarBackButtonHidden()
                }
            }
            
        }
        
    }
}

#Preview {
    ExploreView()
}
