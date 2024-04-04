//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Jakub Trznadel on 04/04/2024.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption = DestinationSearchOptions.location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var guests = 0
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Button{
                    withAnimation(.snappy){
                        show.toggle()
                    }
                } label : {
                    Image(systemName: "xmark.circle")
                        .foregroundStyle(.black)
                        .imageScale(.large)
                }
                
                Spacer()
                
                if !destination.isEmpty {
                    Button("Clear"){
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            //Destination
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack(content: {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destinations", text: $destination)
                            .font(.subheadline)
                    })
                    .frame(height: 40)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(.systemGray4))
                    }
                } else{
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
                
            }
            .modifier(CollapsibleDestinationViewModifier() )
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .location}
            }
            
            //Dates
            
            VStack(alignment: .leading){
                if selectedOption == .dates{
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier() )
            .frame(height: selectedOption == .dates ? 170 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .dates}
            }
            
            
            //Guests
            VStack(alignment: .leading){
                if selectedOption == .guests{
                    Text("Who's coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Stepper {
                        Text("\(guests) Adults")
                    } onIncrement: {
                        guests += 1
                    } onDecrement: {
                        guard guests > 0 else {return}
                        guests -= 1
                    }

                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier() )
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .guests}
            }
            Spacer()
        }
        
    }
}

#Preview {
    DestinationSearchView(show: .constant(true))
}

struct CollapsibleDestinationViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                Spacer()
                Text(description)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
        }
    }
}

