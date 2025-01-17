//
//  SystemKeyboardButtonBorderStyle.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-09-09.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import SwiftUI

/**
 This style defines the border of a system keyboard button.
 
 You can modify the ``standard`` style to change the default,
 global style of all system keyboard buttons.
 */
public struct SystemKeyboardButtonBorderStyle: Equatable {
    
    /**
     Create a system keyboard button border style.
     
     - Parameters:
       - color: The color of the border.
       - size: The size of the border.
     */
    public init(
        color: Color = .clear,
        size: CGFloat = 0) {
        self.color = color
        self.size = size
    }
    
    /**
     The color of the border.
     */
    public var color: Color
    
    /**
     The size of the border.
     */
    public var size: CGFloat
}

public extension SystemKeyboardButtonBorderStyle {
    
    /**
     This style applies no border.
     */
    static var noBorder = SystemKeyboardButtonBorderStyle()
    
    /**
     This standard style aims to mimic the native iOS style.
     */
    static var standard = SystemKeyboardButtonBorderStyle()
}

extension SystemKeyboardButtonBorderStyle {
    
    /**
     This internal style is only used in previews.
     */
    static let previewStyle1 = SystemKeyboardButtonBorderStyle(
        color: .red,
        size: 3)
    
    /**
     This internal style is only used in previews.
     */
    static let previewStyle2 = SystemKeyboardButtonBorderStyle(
        color: .blue,
        size: 5)
}
