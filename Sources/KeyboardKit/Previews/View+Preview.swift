//
//  View+Preview.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-08-26.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension View {
    
    /**
     This modifier prepares the view with environment object
     instances that are required for some views.
     */
    func keyboardPreview(context: KeyboardContext = .preview) -> some View {
        self.environmentObject(context)
            .environmentObject(InputCalloutContext.preview)
            .environmentObject(SecondaryInputCalloutContext.preview)
    }
}
