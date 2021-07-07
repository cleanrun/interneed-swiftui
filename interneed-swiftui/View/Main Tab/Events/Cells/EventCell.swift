//
//  EventCell.swift
//  interneed-swiftui
//
//  Created by cleanmac on 06/07/21.
//

import SwiftUI

struct EventCell: View {
    
    private let event: Event
    private let titleColor: Color
    private let buttonColor: Color
    private let imageName: String
    
    init(with event: Event) {
        self.event = event
        switch event.type {
        case .green:
            titleColor = Color.APP_RED
            buttonColor = Color.GOJEK_GREEN
            imageName = INImageName.BANNER_GREEN
        case .lightBlue:
            titleColor = Color.APP_ORANGE
            buttonColor = Color.GOOGLE_BLUE
            imageName = INImageName.BANNER_BLUE
        case .darkBlue:
            titleColor = Color.GOJEK_GREEN
            buttonColor = Color.TEXT_DARK
            imageName = INImageName.BANNER_ULTRAMARINE
        }
    }
    
    var body: some View {
        ZStack {
            Color.BACKGROUND_BLUE_2
                .cornerRadius(8)
            
            HStack(spacing: 36) {
                VStack(alignment: .leading, spacing: 9) {
                    Text(event.title)
                        .font(Font.extraBold(12))
                        .foregroundColor(titleColor)
                    
                    Text(event.subtitle)
                        .font(Font.extraBold(16))
                        .foregroundColor(.TEXT_BLACK)
                    
                    Text("Join Event")
                        .font(Font.medium(12))
                        .foregroundColor(.white)
                        .padding(.horizontal, 28)
                        .padding(.vertical, 9)
                        .background(buttonColor.cornerRadius(30))
                }.padding()
                
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 100)
                    .padding(.top, 30)
            }
            
        }.frame(height: 154)
    }
}

struct EventCell_Previews: PreviewProvider {
    static var previews: some View {
        EventCell(with: Event.getAll()[0]).previewLayout(.sizeThatFits)
    }
}
