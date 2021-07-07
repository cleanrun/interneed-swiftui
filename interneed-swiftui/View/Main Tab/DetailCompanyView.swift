//
//  DetailCompanyView.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct DetailCompanyView: View {
    
    private let items = ["Descriptions", "About Company"]
    @State private var selection = 0
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
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
                Image(INImageName.LOGO_GOJEK)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 96, height: 96, alignment: .center)
                
                Text("UI Designer Intern")
                    .font(Font.bold(20))
                    .foregroundColor(.TEXT_BLACK)
                
                HStack {
                    Text("3 Months   /")
                        .font(Font.semiBold(14))
                        .foregroundColor(.TEXT_BLACK)
                    
                    Image(INImageName.IC_LOCATION)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 13, height: 13)
                    
                    Text("Jakarta")
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
                                
                                ForEach(0...2, id: \.self) { _ in
                                    HStack(spacing: 13) {
                                        Circle()
                                            .frame(width: 8, height: 8)
                                            .foregroundColor(.GOJEK_GREEN)
                                        
                                        Text("Proven to ever work as a UI/UX Designer or similar role.")
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
                                    Text("Benefit :")
                                        .font(Font.bold(16))
                                        .foregroundColor(.TEXT_BLACK)

                                    Spacer()
                                }

                                ForEach(0...1, id: \.self) { _ in
                                    HStack(spacing: 13) {
                                        Circle()
                                            .frame(width: 8, height: 8)
                                            .foregroundColor(.GOJEK_GREEN)

                                        Text("$200 Monthly Allowance and bonus")
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
                        
                        Text("PT Aplikasi Karya Anak Bangsa, doing business as Gojek, is an Indonesian on-demand multi-service platform and digital payment technology group based in Jakarta. Gojek was first established in Indonesia in 2010 as a call center to connect consumers to courier delivery and two-wheeled ride-hailing services.")
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
    }
}

#if DEBUG
struct DetailCompanyView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCompanyView()
    }
}
#endif
