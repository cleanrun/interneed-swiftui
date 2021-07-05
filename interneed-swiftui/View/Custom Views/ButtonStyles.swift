//
//  ButtonStyles.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.semiBold(18))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .contentShape(Rectangle())
            .foregroundColor(.white)
            .background(Color.TEXT_DARK)
            .cornerRadius(30)
    }
}
