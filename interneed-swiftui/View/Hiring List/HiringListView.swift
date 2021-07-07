//
//  HiringListView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct HiringListView: View {
    
    @Environment(\.presentationMode) private var mode: Binding<PresentationMode>
    @State var searchQuery = ""
    private let internships = Internship.getAll()
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button(action: { self.mode.wrappedValue.dismiss() }) {
                        ZStack {
                            Color.BACKGROUND_TEXT_FIELD
                                .cornerRadius(8)
                            
                            Image(INImageName.IC_BACK)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 14, height: 14)
                        }
                    }.frame(width: 40, height: 40)
                    
                    Spacer()
                }
                
                Text("Actively Hiring")
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
            }.padding(.bottom, 24)
            
            ScrollView(showsIndicators: false) {
                ForEach(internships) { internship in
                    ActivelyHiringCell(with: internship)
                }
            }
            
            Spacer()
        }.padding(.horizontal, 24)
        .navigationBarHidden(true)
    }
}

#if DEBUG
struct HiringListView_Previews: PreviewProvider {
    static var previews: some View {
        HiringListView()
    }
}
#endif
