//
//  Color+Extension.swift
//  Crypto
//
//  Created by Juan Hernandez Pazos on 15/06/23.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
}

struct ColorTheme {
    
    let accentColor = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
