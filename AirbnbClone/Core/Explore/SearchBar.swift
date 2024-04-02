//
//  SearchBar.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 02/04/2024.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack{
            ZStack {
                Capsule()
                    .fill(.white)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.1), radius: 8)
                HStack(spacing: 10){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    VStack(alignment: .leading){
                        Text("Map area")
                            .fontWeight(.semibold)
                        
                        Text("Any week • Add guests")
                            .foregroundStyle(.gray)
                            .font(.footnote)
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
            }
            .frame(height: 50)
            
            Button(action: {}, label: {
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.black)

            })
            .padding()
            .overlay{
                Circle()
                    .stroke(lineWidth: 0.5)
            }
        }
        .padding()
    }
}

#Preview {
    SearchBar()
}
