//
//  View+Extension.swift
//  interneed-swiftui
//
//  Created by cleanmac on 07/07/21.
//

import Foundation
import SwiftUI

extension View {
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
}
