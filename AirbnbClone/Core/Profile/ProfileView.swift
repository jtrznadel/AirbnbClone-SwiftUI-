//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 04/04/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            //Profile Login View
            VStack(alignment: .leading, spacing: 40){
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
                }
                Button("Log in"){
                    
                }
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                HStack{
                    Text("Don't have an account?")
                    Button{
                        
                    } label: {
                        Text("Sign up")
                            .foregroundStyle(.black)
                            .underline()
                            .fontWeight(.semibold)
                    }
                }
                .font(.footnote)
            }
            
            HStack{
                VStack(alignment: .leading, spacing: 12){
                    Text("Airbnb your place")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("It's simple to get set up and start earning.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "house.and.flag.fill")
                    .resizable()
                    .frame(width: 55, height: 40)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            .shadow(radius: 10)
            
            
            //Profile Options View
            VStack(spacing: 24){
                ProfileOptionView(imageName: "gear", title: "Setting")
                
                ProfileOptionView(imageName: "gear", title: "Accessibility")

                ProfileOptionView(imageName: "questionmark.circle", title: "Visit the help center")

                ProfileOptionView(imageName: "lock", title: "Third-party tools")

            }
            .padding(.vertical)
            
            Spacer()
        }
        .padding(.top, 48)
        .padding()

    }
}

#Preview {
    ProfileView()
}
