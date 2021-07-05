//
//  HomeView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchQuery = ""
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                Color.TEXT_DARK
                    .ignoresSafeArea(.container, edges: .top)
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        HStack {
                            Color.BACKGROUND_BLUE_2
                                .frame(width: 48, height: 48)
                                .cornerRadius(8)
                            
                            VStack(alignment: .leading) {
                                Text("Hello there,")
                                    .font(Font.medium(12))
                                    .foregroundColor(.white)
                                
                                Text("Julia Syalia")
                                    .font(Font.bold(16))
                                    .foregroundColor(.white)
                            }
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(INImageName.IC_BELL)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                            }
                        }.padding(.horizontal, 24)
                        
                        
                        ZStack {
                            Color.white
                            
                            VStack(spacing: 24) {
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
                                    
                                    Button(action: {}) {
                                        ZStack {
                                            Color.TEXT_DARK
                                                .cornerRadius(8)
                                            
                                            Image(INImageName.IC_FILTER)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 18, height: 18, alignment: .center)
                                        }
                                    }.frame(width: 48, height: 48)
                                }
                                
                                ZStack {
                                    Color.BACKGROUND_BLUE_2
                                        .cornerRadius(8)
                                    
                                    HStack(spacing: 36) {
                                        VStack(alignment: .leading, spacing: 9) {
                                            Text("Career Conference")
                                                .font(Font.extraBold(12))
                                                .foregroundColor(.APP_RED)
                                            
                                            Text("Treat yourself with knowledge")
                                                .font(Font.extraBold(16))
                                                .foregroundColor(.TEXT_BLACK)
                                            
                                            Text("Join Event")
                                                .font(Font.medium(12))
                                                .foregroundColor(.white)
                                                .padding(.horizontal, 28)
                                                .padding(.vertical, 9)
                                                .background(Color.GOJEK_GREEN.cornerRadius(30))
                                        }
                                        
                                        Image(INImageName.BANNER_GREEN)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 130, height: 100)
                                            .padding(.top, 30)
                                    }
                                }.frame(height: 154)
                                
                                VStack {
                                    HStack {
                                        Text("Actively Hiring")
                                            .font(Font.extraBold(16))
                                            .foregroundColor(.TEXT_BLACK)
                                        
                                        Spacer()
                                        
                                        Button(action: {}) {
                                            Text("See All")
                                                .font(Font.bold(13))
                                                .foregroundColor(.GOJEK_GREEN)
                                        }
                                    }
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0...5, id: \.self) { _ in
                                                ActivelyHiringCell()
                                            }
                                        }
                                    }
                                }
                                
                                VStack {
                                    HStack {
                                        Text("New Internship")
                                            .font(Font.extraBold(16))
                                            .foregroundColor(.TEXT_BLACK)
                                        
                                        Spacer()
                                        
                                        Button(action: {}) {
                                            Text("See All")
                                                .font(Font.bold(13))
                                                .foregroundColor(.GOJEK_GREEN)
                                        }
                                    }
                                    
                                    LazyVStack {
                                        ForEach(0...10, id: \.self) { _ in
                                            NewInternshipCell()
                                        }
                                    }
                                }
                            }.padding(.all, 24)
                        }
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
