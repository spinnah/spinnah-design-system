//===========================================================================
//  Colors.swift (file version 1)
//  SpinnahDesignSystem (app version 1.0)
//
//  Created by Shast LeLow on 8/18/25
//
//  Defines the centralized color palette for all Spinnah apps.
//  Uses assets from Colors.xcassets and provides static access points.
//===========================================================================

import SwiftUI

public enum SpinnahColor {
    public static let primary = Color("SpinnahPrimary", bundle: .module)
    public static let secondary = Color("SpinnahSecondary", bundle: .module)
    public static let background = Color("SpinnahBackground", bundle: .module)
    public static let backgroundSecondary = Color("SpinnahBackgroundSecondary", bundle: .module)
    public static let border = Color("SpinnahBorder", bundle: .module)
    public static let overlay = Color("SpinnahOverlay", bundle: .module)
    public static let card = Color("SpinnahCardElevated", bundle: .module)

    public static let textPrimary = Color("SpinnahTextPrimary", bundle: .module)
    public static let textSecondary = Color("SpinnahTextSecondary", bundle: .module)
    public static let textDisabled = Color("SpinnahTextDisabled", bundle: .module)
    public static let textPlaceholder = Color("SpinnahTextPlaceholder", bundle: .module)

    public static let success = Color("SpinnahSuccess", bundle: .module)
    public static let warning = Color("SpinnahWarning", bundle: .module)
    public static let error = Color("SpinnahError", bundle: .module)
    public static let info = Color("SpinnahInfo", bundle: .module)
    public static let link = Color("SpinnahLink", bundle: .module)
    public static let accent = Color("SpinnahAccent", bundle: .module)
}
