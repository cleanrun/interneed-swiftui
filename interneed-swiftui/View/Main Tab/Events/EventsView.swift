//
//  EventsView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct EventsView: View {
    
    @State private var searchQuery = ""
    private let events = Event.getAll()
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Spacer()
                    
                    Image(INImageName.IC_BELL)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 19, height: 19)
                }.padding(.horizontal, 33)
                
                Text("Growth Event")
                    .font(Font.bold(18))
                    .foregroundColor(.TEXT_BLACK)
                
            }.padding(.bottom, 32)
            
            HStack(spacing: 12) {
                ZStack {
                    Color.BACKGROUND_TEXT_FIELD
                        .cornerRadius(8)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.TEXT_DARK)
                            .padding(.leading, 16)
                        
                        TextField("Find Internship", text: $searchQuery)
                            .font(Font.medium(16))
                            .foregroundColor(.TEXT_DARK)
                            .padding(.trailing, 16)
                    }
                    
                }.frame(height: 48)
            }.padding(.horizontal, 24)
            .padding(.bottom, 24)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(events) { event in
                        EventCell(with: event)
                    }
                }
            }.padding(.horizontal, 24)
            
            Spacer()
        }.navigationBarHidden(true)
    }
}

#if DEBUG
struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
#endif
