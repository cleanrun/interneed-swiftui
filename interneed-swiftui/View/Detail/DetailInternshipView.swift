//
//  DetailCompanyView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct DetailInternshipView: View {
    
    private let internship: Internship
    private let items = ["Descriptions", "About Company"]
    @State private var selection = 0
    @Environment(\.presentationMode) private var mode: Binding<PresentationMode>
    
    init(with internship: Internship) {
        self.internship = internship
    }
    
    var body: some View {
        VStack {
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
                
                Button(action: {}) {
                    ZStack {
                        Color.BACKGROUND_TEXT_FIELD
                            .cornerRadius(8)
                        
                        Image(INImageName.IC_FAVORITE)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 19, height: 19)
                    }
                }.frame(width: 40, height: 40)
            }
            
            VStack {
                Image(internship.company.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 96, height: 96, alignment: .center)
                
                Text(internship.title)
                    .font(Font.bold(20))
                    .foregroundColor(.TEXT_BLACK)
                
                HStack {
                    Text("\(internship.duration)   /")
                        .font(Font.semiBold(14))
                        .foregroundColor(.TEXT_BLACK)
                    
                    Image(INImageName.IC_LOCATION)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 13, height: 13)
                    
                    Text(internship.company.city)
                        .font(Font.semiBold(14))
                        .foregroundColor(.TEXT_BLACK)
                }
            }
            
            INSegmentedControl(items: items, selection: $selection)
                .padding(.bottom, 18)
            
            ScrollView {
                if selection == 0 {
                    LazyVStack {
                        ZStack() {
                            Color.BACKGROUND_TEXT_FIELD
                                .cornerRadius(8)
                            
                            VStack {
                                HStack {
                                    Text("Requirements :")
                                        .font(Font.bold(16))
                                        .foregroundColor(.TEXT_BLACK)
                                    
                                    Spacer()
                                }
                                
                                ForEach(internship.requirements, id: \.self) { requirement in
                                    HStack(spacing: 13) {
                                        Circle()
                                            .frame(width: 8, height: 8)
                                            .foregroundColor(.GOJEK_GREEN)
                                        
                                        Text(requirement)
                                            .font(Font.medium(12))
                                            .foregroundColor(.gray)
                                        
                                        Spacer()
                                    }
                                }
                            }.padding(16)
                                
                        }
                        
                        ZStack {
                            Color.BACKGROUND_TEXT_FIELD
                                .cornerRadius(8)

                            VStack {
                                HStack {
                                    Text("Benefits :")
                                        .font(Font.bold(16))
                                        .foregroundColor(.TEXT_BLACK)

                                    Spacer()
                                }

                                ForEach(internship.benefits, id: \.self) { benefit in
                                    HStack(spacing: 13) {
                                        Circle()
                                            .frame(width: 8, height: 8)
                                            .foregroundColor(.GOJEK_GREEN)

                                        Text(benefit)
                                            .font(Font.medium(12))
                                            .foregroundColor(.gray)

                                        Spacer()
                                    }
                                }
                            }.padding(16)
                        }
                    }
                } else {
                    ZStack {
                        Color.BACKGROUND_TEXT_FIELD
                            .cornerRadius(8)
                        
                        Text(internship.company.about)
                            .font(Font.medium(14))
                            .foregroundColor(.gray)
                            .padding(16)
                    }
                }
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Apply Internship")
            }.buttonStyle(PrimaryButtonStyle())
            .frame(height: 56)
            
        }.padding(.horizontal, 24)
        .navigationBarHidden(true)
    }
}

#if DEBUG
struct DetailInternshipView_Previews: PreviewProvider {
    static var previews: some View {
        DetailInternshipView(with: Internship.getAll()[2])
    }
}
#endif
