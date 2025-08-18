//===========================================================================
//  Gradients.swift (file version 1)
//  SpinnahDesignSystem (app version 1.0)
//
//  Created by Shast LeLow on 8/18/25
//
//  Defines reusable gradient styles built from SpinnahColors.
//  Includes directionality, emphasis variants, and glow effects.
//===========================================================================

import SwiftUI

public struct SpinnahGradients {
    
    // MARK: - Primary Gradients
    
    public static let vertical = LinearGradient(
        gradient: Gradient(colors: [
            SpinnahColors.backgroundTop,
            SpinnahColors.backgroundBottom
        ]),
        startPoint: .top,
        endPoint: .bottom
    )

    public static let diagonal = LinearGradient(
        gradient: Gradient(colors: [
            SpinnahColors.backgroundTop,
            SpinnahColors.backgroundBottom
        ]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )

    // MARK: - Accent Gradient

    public static let accent = LinearGradient(
        gradient: Gradient(colors: [
            SpinnahColors.accentStart,
            SpinnahColors.accentEnd
        ]),
        startPoint: .top,
        endPoint: .bottom
    )

    // MARK: - Overlay & Glow Effects

    public static let subtleOverlay = LinearGradient(
        gradient: Gradient(colors: [
            SpinnahColors.backgroundTop.opacity(0.2),
            SpinnahColors.backgroundBottom.opacity(0.2)
        ]),
        startPoint: .top,
        endPoint: .bottom
    )

    public static let glow = LinearGradient(
        gradient: Gradient(colors: [
            SpinnahColors.accentStart.opacity(0.4),
            SpinnahColors.accentEnd.opacity(0.4)
        ]),
        startPoint: .top,
        endPoint: .bottom
    )
}
