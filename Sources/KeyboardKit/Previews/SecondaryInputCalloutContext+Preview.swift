//
//  SecondaryInputCalloutContext+Preview.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-02-01.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

public extension SecondaryInputCalloutContext {
    
    /**
     This preview context can be used in SwiftUI previews.
     */
    static var preview: SecondaryInputCalloutContext {
        SecondaryInputCalloutContext(
            actionHandler: .preview,
            actionProvider: PreviewSecondaryCalloutActionProvider())
    }
}
