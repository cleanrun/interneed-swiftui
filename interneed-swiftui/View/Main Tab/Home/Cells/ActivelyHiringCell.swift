//
//  ActivelyHiringCell.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import SwiftUI

struct ActivelyHiringCell: View {
    var body: some View {
        ZStack {
            Color.BACKGROUND_TEXT_FIELD
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Color.white
                            .cornerRadius(8)
                         
                        Image(INImageName.LOGO_NETFLIX)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        
                    }.frame(width: 48, height: 48, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        Text("UX Writter Intern")
                            .font(Font.bold(14))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                        
                        Text("Netflix")
                            .font(Font.bold(12))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                    }
                }
                
                VStack() {
                    HStack {
                        Image(INImageName.IC_LOCATION)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 13, height: 13)
                        
                        Text("Bandung")
                            .font(Font.medium(12))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                    }
                    
                    HStack {
                        Image(INImageName.IC_CALENDAR)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 13, height: 13)
                        
                        Text("6 Months")
                            .font(Font.medium(12))
                            .foregroundColor(.TEXT_DARK)
                            .lineLimit(1)
                    }
                }
                
                HStack {
                    Text("Join Event")
                        .font(Font.medium(10))
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 4)
                        .background(Color.TEXT_DARK.cornerRadius(30))
                    
                    Text("189 Applicants")
                        .font(Font.medium(8))
                        .foregroundColor(.TEXT_DARK)
                        .lineLimit(1)
                }
            }
        }.frame(width: 220, height: 176)
    }
}

#if DEBUG
struct ActivelyHiringCell_Previews: PreviewProvider {
    static var previews: some View {
        ActivelyHiringCell().previewLayout(.sizeThatFits)
    }
}
#endif
