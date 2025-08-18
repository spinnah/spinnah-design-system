//===========================================================================
//  Fonts.swift (file version 1)
//  SpinnahDesignSystem (app version 1.0)
//
//  Created by Shast LeLow on 8/18/25
//
//  Defines the standard font styles used across all Spinnah apps.
//  Provides static accessors for semantic typography.
//===========================================================================

import SwiftUI

public struct SpinnahFonts {
    
    // MARK: - Heading Styles
    
    public static let title = Font.system(size: 28, weight: .bold, design: .rounded)
    public static let subtitle = Font.system(size: 22, weight: .semibold, design: .rounded)
    public static let sectionHeader = Font.system(size: 18, weight: .medium, design: .rounded)

    // MARK: - Body Styles

    public static let body = Font.system(size: 16, weight: .regular, design: .rounded)
    public static let bodyEmphasis = Font.system(size: 16, weight: .semibold, design: .rounded)

    // MARK: - Small Text Styles

    public static let caption = Font.system(size: 13, weight: .regular, design: .rounded)
    public static let footnote = Font.system(size: 11, weight: .light, design: .rounded)
}
