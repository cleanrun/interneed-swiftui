//
//  Font+Extension.swift
//  interneed-swiftui
//
//  Created by cleanmac on 05/07/21.
//

import Foundation
import SwiftUI

extension Font {
    static func bold(_ size: CGFloat) -> Font? {
        Font.custom("Manrope-Bold", size: size)
    }
    
    static func extraBold(_ size: CGFloat) -> Font? {
        Font.custom("Manrope-ExtraBold", size: size)
    }
    
    static func extraLight(_ size: CGFloat) -> Font? {
        return Font.custom("Manrope-ExtraLight", size: size)
    }
    
    static func light(_ size: CGFloat) -> Font? {
        return Font.custom("Manrope-Light", size: size)
    }
    
    static func medium(_ size: CGFloat) -> Font? {
        return Font.custom("Manrope-Medium", size: size)
    }
    
    static func regular(_ size: CGFloat) -> Font? {
        return Font.custom("Manrope-Regular", size: size)
    }
    
    static func semiBold(_ size: CGFloat) -> Font? {
        return Font.custom("Manrope-SemiBold", size: size)
    }
}
