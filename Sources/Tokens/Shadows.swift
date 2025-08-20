//
//  Shadows.swift (file version 1)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Defines the complete shadow and elevation system for consistent
//  depth and visual hierarchy across all Spinnah apps. Includes
//  color-aware shadows that adapt to light and dark appearances.
//

import SwiftUI

// MARK: - Shadow Configuration
public struct SpinnahShadow {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
    let opacity: Double
    
    public init(
        color: Color = .black,
        radius: CGFloat,
        x: CGFloat = 0,
        y: CGFloat,
        opacity: Double
    ) {
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
        self.opacity = opacity
    }
}

// MARK: - Core Shadow Scale
public enum SpinnahShadows {
    
    // MARK: - Basic Elevation Levels
    
    /// No shadow - 0pt elevation
    /// Use for: Flat elements, embedded content
    public static let none = SpinnahShadow(
        radius: 0,
        y: 0,
        opacity: 0
    )
    
    /// Subtle shadow - 1pt elevation
    /// Use for: Slight separation, hover states
    public static let subtle = SpinnahShadow(
        radius: 2,
        y: 1,
        opacity: 0.05
    )
    
    /// Light shadow - 2pt elevation
    /// Use for: Form elements, input fields
    public static let light = SpinnahShadow(
        radius: 4,
        y: 2,
        opacity: 0.08
    )
    
    /// Standard shadow - 4pt elevation
    /// Use for: Cards, buttons, standard components
    public static let standard = SpinnahShadow(
        radius: 8,
        y: 4,
        opacity: 0.1
    )
    
    /// Medium shadow - 8pt elevation
    /// Use for: Elevated cards, prominent elements
    public static let medium = SpinnahShadow(
        radius: 12,
        y: 8,
        opacity: 0.12
    )
    
    /// Large shadow - 16pt elevation
    /// Use for: Floating action buttons, dragged elements
    public static let large = SpinnahShadow(
        radius: 16,
        y: 16,
        opacity: 0.15
    )
    
    /// Extra large shadow - 24pt elevation
    /// Use for: Modals, popovers, high prominence
    public static let xlarge = SpinnahShadow(
        radius: 24,
        y: 24,
        opacity: 0.18
    )
    
    /// Dramatic shadow - 32pt elevation
    /// Use for: Splash screens, hero elements
    public static let dramatic = SpinnahShadow(
        radius: 32,
        y: 32,
        opacity: 0.2
    )
    
    // MARK: - Specialized Shadows
    
    /// Inner shadow effect
    /// Use for: Pressed states, inset elements
    public static let inner = SpinnahShadow(
        radius: 4,
        y: -2,
        opacity: 0.1
    )
    
    /// Glow effect
    /// Use for: Focus states, highlights, neon effects
    public static let glow = SpinnahShadow(
        color: Color.spinnahPrimary,
        radius: 8,
        y: 0,
        opacity: 0.3
    )
    
    /// Colored shadow using brand gradient
    /// Use for: Special emphasis, brand moments
    public static let brand = SpinnahShadow(
        color: Color.spinnahPrimary,
        radius: 12,
        y: 8,
        opacity: 0.15
    )
}

// MARK: - Semantic Shadow Aliases
public extension SpinnahShadows {
    
    // MARK: - Component Types
    
    /// Standard card shadow
    static let card = standard
    
    /// Elevated card shadow (more prominent)
    static let cardElevated = medium
    
    /// Floating card shadow (highest elevation)
    static let cardFloating = large
    
    /// Button shadow (subtle depth)
    static let button = light
    
    /// Primary button shadow (more emphasis)
    static let buttonPrimary = standard
    
    /// Floating action button shadow
    static let buttonFloating = large
    
    /// Modal/sheet shadow
    static let modal = xlarge
    
    /// Popover shadow
    static let popover = medium
    
    /// Tooltip shadow
    static let tooltip = standard
    
    /// Navigation bar shadow
    static let navigationBar = subtle
    
    /// Toolbar shadow
    static let toolbar = light
    
    /// Panel shadow
    static let panel = standard
    
    /// Sidebar shadow
    static let sidebar = medium
    
    // MARK: - Interactive States
    
    /// Hover state shadow (slightly elevated)
    static let hover = medium
    
    /// Active/pressed state shadow (reduced)
    static let active = subtle
    
    /// Focus state shadow (with glow)
    static let focus = glow
    
    /// Dragging state shadow (floating)
    static let dragging = dramatic
    
    // MARK: - Special Effects
    
    /// Liquid Glass ornament shadow
    static let liquidGlass = SpinnahShadow(
        radius: 12,
        y: 6,
        opacity: 0.1
    )
    
    /// Text shadow for better readability
    static let text = SpinnahShadow(
        radius: 1,
        y: 1,
        opacity: 0.3
    )
    
    /// Image container shadow
    static let image = standard
}

// MARK: - Color-Aware Shadow Extensions
public extension SpinnahShadow {
    
    /// Creates a shadow that adapts to appearance (light/dark mode)
    /// - Parameters:
    ///   - lightOpacity: Opacity for light appearance
    ///   - darkOpacity: Opacity for dark appearance
    /// - Returns: Color-aware shadow
    func colorAware(lightOpacity: Double? = nil, darkOpacity: Double? = nil) -> SpinnahShadow {
        SpinnahShadow(
            color: Color.primary,  // Adapts to appearance
            radius: self.radius,
            x: self.x,
            y: self.y,
            opacity: lightOpacity ?? self.opacity
        )
    }
    
    /// Creates a shadow with custom color
    /// - Parameter color: Custom shadow color
    /// - Returns: Shadow with specified color
    func withColor(_ color: Color) -> SpinnahShadow {
        SpinnahShadow(
            color: color,
            radius: self.radius,
            x: self.x,
            y: self.y,
            opacity: self.opacity
        )
    }
    
    /// Creates a shadow with adjusted opacity
    /// - Parameter opacity: New opacity value
    /// - Returns: Shadow with adjusted opacity
    func withOpacity(_ opacity: Double) -> SpinnahShadow {
        SpinnahShadow(
            color: self.color,
            radius: self.radius,
            x: self.x,
            y: self.y,
            opacity: opacity
        )
    }
    
    /// Creates a shadow with scaled dimensions
    /// - Parameter scale: Scale factor for radius and offset
    /// - Returns: Scaled shadow
    func scaled(by scale: Double) -> SpinnahShadow {
        SpinnahShadow(
            color: self.color,
            radius: self.radius * scale,
            x: self.x * scale,
            y: self.y * scale,
            opacity: self.opacity
        )
    }
}

// MARK: - SwiftUI View Extensions
public extension View {
    
    /// Applies a Spinnah shadow configuration
    /// - Parameter shadow: Shadow configuration to apply
    /// - Returns: View with applied shadow
    func spinnahShadow(_ shadow: SpinnahShadow) -> some View {
        self.shadow(
            color: shadow.color.opacity(shadow.opacity),
            radius: shadow.radius,
            x: shadow.x,
            y: shadow.y
        )
    }
    
    /// Applies standard card shadow
    func spinnahCardShadow() -> some View {
        self.spinnahShadow(SpinnahShadows.card)
    }
    
    /// Applies elevated card shadow
    func spinnahElevatedShadow() -> some View {
        self.spinnahShadow(SpinnahShadows.cardElevated)
    }
    
    /// Applies floating shadow for prominent elements
    func spinnahFloatingShadow() -> some View {
        self.spinnahShadow(SpinnahShadows.cardFloating)
    }
    
    /// Applies button shadow
    func spinnahButtonShadow() -> some View {
        self.spinnahShadow(SpinnahShadows.button)
    }
    
    /// Applies modal shadow
    func spinnahModalShadow() -> some View {
        self.spinnahShadow(SpinnahShadows.modal)
    }
    
    /// Applies brand-colored shadow
    func spinnahBrandShadow() -> some View {
        self.spinnahShadow(SpinnahShadows.brand)
    }
    
    /// Applies glow effect
    func spinnahGlow() -> some View {
        self.spinnahShadow(SpinnahShadows.glow)
    }
}

// MARK: - Multi-Layer Shadow Support
public extension View {
    
    /// Applies multiple shadows for complex depth effects
    /// - Parameter shadows: Array of shadow configurations
    /// - Returns: View with layered shadows
    func spinnahLayeredShadow(_ shadows: [SpinnahShadow]) -> some View {
        shadows.reduce(AnyView(self)) { view, shadow in
            AnyView(view.spinnahShadow(shadow))
        }
    }
    
    /// Applies realistic card shadow (combines multiple layers)
    func spinnahRealisticCardShadow() -> some View {
        self.spinnahLayeredShadow([
            SpinnahShadows.subtle,     // Ambient shadow
            SpinnahShadows.standard    // Direct shadow
        ])
    }
    
    /// Applies dramatic floating shadow (multiple layers)
    func spinnahDramaticShadow() -> some View {
        self.spinnahLayeredShadow([
            SpinnahShadows.medium,     // Base shadow
            SpinnahShadows.large,      // Depth shadow
            SpinnahShadows.dramatic    // Drama shadow
        ])
    }
}

// MARK: - Shadow Presets for Common Combinations
public enum SpinnahShadowPresets {
    
    /// Apple-style card shadow (subtle but effective)
    public static let appleCard = [
        SpinnahShadows.subtle.withOpacity(0.03),
        SpinnahShadows.light.withOpacity(0.08)
    ]
    
    /// Material Design card shadow
    public static let materialCard = [
        SpinnahShadows.light.withOpacity(0.12),
        SpinnahShadows.standard.withOpacity(0.08)
    ]
    
    /// Neumorphism-style shadow (light and dark)
    public static let neumorphism = [
        SpinnahShadows.medium.withColor(.white).withOpacity(0.7),
        SpinnahShadows.medium.withColor(.black).withOpacity(0.1)
    ]
    
    /// Liquid Glass ornament shadow (Apple Music style)
    public static let liquidGlassOrnament = [
        SpinnahShadows.subtle.withOpacity(0.05),
        SpinnahShadows.liquidGlass.withOpacity(0.1)
    ]
    
    /// Hero element shadow (dramatic but tasteful)
    public static let hero = [
        SpinnahShadows.large.withOpacity(0.1),
        SpinnahShadows.dramatic.withOpacity(0.05)
    ]
}

// MARK: - Platform-Specific Adjustments
public extension SpinnahShadows {
    
    /// Returns shadow adjusted for current platform
    /// - Parameter shadow: Base shadow configuration
    /// - Returns: Platform-optimized shadow
    static func platformOptimized(_ shadow: SpinnahShadow) -> SpinnahShadow {
        #if os(macOS)
        // macOS can handle more dramatic shadows
        return shadow.scaled(by: 1.2)
        #elseif os(iOS)
        // iOS standard shadows
        return shadow
        #elseif os(visionOS)
        // visionOS might need subtler shadows
        return shadow.withOpacity(shadow.opacity * 0.8)
        #else
        return shadow
        #endif
    }
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahShadows_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            VStack(spacing: SpinnahSpacing.lg) {
                
                // Basic Shadow Scale
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Shadow Elevation Scale")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: SpinnahSpacing.md) {
                        shadowDemo("none", SpinnahShadows.none)
                        shadowDemo("subtle", SpinnahShadows.subtle)
                        shadowDemo("light", SpinnahShadows.light)
                        shadowDemo("standard", SpinnahShadows.standard)
                        shadowDemo("medium", SpinnahShadows.medium)
                        shadowDemo("large", SpinnahShadows.large)
                        shadowDemo("xlarge", SpinnahShadows.xlarge)
                        shadowDemo("dramatic", SpinnahShadows.dramatic)
                    }
                }
                
                // Component Examples
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Component Shadow Examples")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    VStack(spacing: SpinnahSpacing.md) {
                        // Button Examples
                        HStack(spacing: SpinnahSpacing.md) {
                            buttonExample("Standard Button", shadow: SpinnahShadows.button)
                            buttonExample("Primary Button", shadow: SpinnahShadows.buttonPrimary)
                            buttonExample("Floating Button", shadow: SpinnahShadows.buttonFloating)
                        }
                        
                        // Card Examples
                        HStack(spacing: SpinnahSpacing.md) {
                            cardExample("Standard Card", shadow: SpinnahShadows.card)
                            cardExample("Elevated Card", shadow: SpinnahShadows.cardElevated)
                            cardExample("Floating Card", shadow: SpinnahShadows.cardFloating)
                        }
                    }
                }
                
                // Special Effects
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Special Shadow Effects")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    HStack(spacing: SpinnahSpacing.md) {
                        specialEffectExample("Glow Effect", shadow: SpinnahShadows.glow)
                        specialEffectExample("Brand Shadow", shadow: SpinnahShadows.brand)
                        specialEffectExample("Inner Shadow", shadow: SpinnahShadows.inner)
                    }
                }
                
                // Multi-Layer Examples
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Multi-Layer Shadow Examples")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    HStack(spacing: SpinnahSpacing.md) {
                        multiLayerExample("Apple Card", shadows: SpinnahShadowPresets.appleCard)
                        multiLayerExample("Material Card", shadows: SpinnahShadowPresets.materialCard)
                        multiLayerExample("Hero Element", shadows: SpinnahShadowPresets.hero)
                    }
                }
                
                // Interactive States Demo
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Interactive State Shadows")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    HStack(spacing: SpinnahSpacing.md) {
                        interactiveExample("Normal", shadow: SpinnahShadows.button)
                        interactiveExample("Hover", shadow: SpinnahShadows.hover)
                        interactiveExample("Active", shadow: SpinnahShadows.active)
                    }
                }
            }
            .spinnahPageMargins()
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Shadow System")
    }
    
    // Helper functions for shadow visualization
    private static func shadowDemo(_ name: String, _ shadow: SpinnahShadow) -> some View {
        VStack(spacing: 6) {
            Rectangle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 80, height: 60)
                .spinnahShadow(shadow)
            
            VStack(spacing: 2) {
                Text(name)
                    .font(SpinnahFonts.labelS)
                    .foregroundStyle(Color.spinnahTextPrimary)
                
                Text("r:\(Int(shadow.radius)) y:\(Int(shadow.y))")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(Color.spinnahTextSecondary)
            }
        }
    }
    
    private static func buttonExample(_ label: String, shadow: SpinnahShadow) -> some View {
        VStack(spacing: 6) {
            Text("Button")
                .font(SpinnahFonts.labelM)
                .foregroundStyle(.white)
                .padding(.horizontal, SpinnahSpacing.smPlus)
                .padding(.vertical, SpinnahSpacing.sm)
                .background(Color.spinnahPrimary)
                .cornerRadius(SpinnahCornerRadius.button)
                .spinnahShadow(shadow)
            
            Text(label)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func cardExample(_ label: String, shadow: SpinnahShadow) -> some View {
        VStack(spacing: 6) {
            VStack(spacing: 4) {
                Text("Card Title")
                    .font(SpinnahFonts.labelM)
                    .foregroundStyle(Color.spinnahTextPrimary)
                
                Text("Card content area")
                    .font(SpinnahFonts.bodyS)
                    .foregroundStyle(Color.spinnahTextSecondary)
            }
            .padding(SpinnahSpacing.sm)
            .frame(width: 100, height: 80)
            .background(Color.spinnahCardElevated)
            .cornerRadius(SpinnahCornerRadius.card)
            .spinnahShadow(shadow)
            
            Text(label)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func specialEffectExample(_ label: String, shadow: SpinnahShadow) -> some View {
        VStack(spacing: 6) {
            Circle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "sparkles")
                        .font(.system(size: 24))
                        .foregroundStyle(Color.spinnahPrimary)
                )
                .spinnahShadow(shadow)
            
            Text(label)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func multiLayerExample(_ label: String, shadows: [SpinnahShadow]) -> some View {
        VStack(spacing: 6) {
            Rectangle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 80, height: 60)
                .spinnahLayeredShadow(shadows)
            
            Text(label)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func interactiveExample(_ label: String, shadow: SpinnahShadow) -> some View {
        VStack(spacing: 6) {
            RoundedRectangle(cornerRadius: SpinnahCornerRadius.button)
                .fill(Color.spinnahSecondary)
                .frame(width: 70, height: 40)
                .overlay(
                    Text("Tap")
                        .font(SpinnahFonts.labelS)
                        .foregroundStyle(.white)
                )
                .spinnahShadow(shadow)
            
            Text(label)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
}
#endif
