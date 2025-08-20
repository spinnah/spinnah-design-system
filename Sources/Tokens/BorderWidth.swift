//
//  BorderWidth.swift (file version 1)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Defines the complete border width system for consistent thickness
//  and visual weight across all Spinnah apps. Optimized for different
//  display densities and platform conventions.
//

import SwiftUI

// MARK: - Core Border Width Scale
public enum SpinnahBorderWidth {
    
    // MARK: - Ultra-thin Borders
    
    /// No border - 0pt
    /// Use for: Borderless elements, invisible separators
    public static let none: CGFloat = 0
    
    /// Hairline border - 0.5pt
    /// Use for: Subtle separators, fine dividers, delicate outlines
    public static let hairline: CGFloat = 0.5
    
    /// Ultra-thin border - 0.75pt
    /// Use for: Very subtle component borders, light separators
    public static let ultraThin: CGFloat = 0.75
    
    // MARK: - Standard Borders (Most Common)
    
    /// Thin border - 1pt
    /// Use for: Standard component borders, default outlines
    public static let thin: CGFloat = 1.0
    
    /// Light border - 1.5pt
    /// Use for: Slightly emphasized borders, card outlines
    public static let light: CGFloat = 1.5
    
    /// Standard border - 2pt
    /// Use for: Prominent component borders, focus states
    public static let standard: CGFloat = 2.0
    
    /// Medium border - 3pt
    /// Use for: Emphasized borders, important outlines
    public static let medium: CGFloat = 3.0
    
    // MARK: - Thick Borders (Emphasis)
    
    /// Thick border - 4pt
    /// Use for: Strong emphasis, primary focus indicators
    public static let thick: CGFloat = 4.0
    
    /// Heavy border - 5pt
    /// Use for: Very prominent borders, major emphasis
    public static let heavy: CGFloat = 5.0
    
    /// Extra thick border - 6pt
    /// Use for: Maximum emphasis, dramatic outlines
    public static let extraThick: CGFloat = 6.0
    
    /// Massive border - 8pt
    /// Use for: Hero elements, extreme emphasis
    public static let massive: CGFloat = 8.0
    
    /// Ultra thick border - 12pt
    /// Use for: Design elements, decorative borders
    public static let ultraThick: CGFloat = 12.0
}

// MARK: - Semantic Border Width Aliases
public extension SpinnahBorderWidth {
    
    // MARK: - Component Types
    
    /// Standard button border width
    static let button = thin
    
    /// Primary button border width (more prominent)
    static let buttonPrimary = standard
    
    /// Secondary button border width
    static let buttonSecondary = light
    
    /// Pill button border width
    static let buttonPill = light
    
    /// Card border width
    static let card = hairline
    
    /// Elevated card border width
    static let cardElevated = thin
    
    /// Card outline border width
    static let cardOutline = light
    
    /// Input field border width
    static let input = thin
    
    /// Text area border width
    static let textArea = thin
    
    /// Select/picker border width
    static let select = thin
    
    /// Checkbox border width
    static let checkbox = standard
    
    /// Radio button border width
    static let radio = standard
    
    /// Switch border width
    static let switchToggle = thin
    
    // MARK: - Interactive States
    
    /// Hover state border width
    static let hover = light
    
    /// Active state border width
    static let active = standard
    
    /// Focus state border width
    static let focus = standard
    
    /// Selected state border width
    static let selected = medium
    
    /// Disabled state border width
    static let disabled = hairline
    
    /// Error state border width
    static let error = standard
    
    /// Success state border width
    static let success = standard
    
    /// Warning state border width
    static let warning = standard
    
    // MARK: - Layout Elements
    
    /// Divider/separator width
    static let divider = hairline
    
    /// Section divider width
    static let sectionDivider = thin
    
    /// Navigation bar border width
    static let navigationBar = hairline
    
    /// Toolbar border width
    static let toolbar = hairline
    
    /// Sidebar border width
    static let sidebar = thin
    
    /// Panel border width
    static let panel = light
    
    /// Modal border width
    static let modal = hairline
    
    /// Sheet border width
    static let sheet = hairline
    
    /// Popover border width
    static let popover = light
    
    /// Tooltip border width
    static let tooltip = thin
    
    // MARK: - Content Types
    
    /// Image container border width
    static let imageContainer = light
    
    /// Avatar border width
    static let avatar = standard
    
    /// Icon container border width
    static let iconContainer = thin
    
    /// Code block border width
    static let codeBlock = light
    
    /// Quote/callout border width
    static let callout = medium
    
    /// Table border width
    static let table = hairline
    
    /// Table header border width
    static let tableHeader = thin
    
    // MARK: - Special Elements
    
    /// Progress bar border width
    static let progressBar = hairline
    
    /// Loading spinner border width
    static let loadingSpinner = standard
    
    /// Badge border width
    static let badge = thin
    
    /// Tag border width
    static let tag = light
    
    /// Chip border width
    static let chip = light
    
    /// Ornament border width (navigation ornaments)
    static let ornament = hairline
}

// MARK: - Border Width Utility Methods
public extension SpinnahBorderWidth {
    
    /// Returns border width value clamped to reasonable bounds
    /// - Parameter value: Input border width value
    /// - Returns: Clamped border width value
    static func clamped(_ value: CGFloat) -> CGFloat {
        return max(0.0, min(20.0, value))
    }
    
    /// Returns border width value scaled by a factor
    /// - Parameters:
    ///   - width: Base border width value
    ///   - factor: Scale factor
    /// - Returns: Scaled border width value
    static func scaled(_ width: CGFloat, by factor: Double) -> CGFloat {
        return clamped(width * factor)
    }
    
    /// Returns the next thicker border width in the scale
    /// - Parameter current: Current border width value
    /// - Returns: Next thicker border width value
    static func thicker(than current: CGFloat) -> CGFloat {
        switch current {
        case none: return hairline
        case hairline: return ultraThin
        case ultraThin: return thin
        case thin: return light
        case light: return standard
        case standard: return medium
        case medium: return thick
        case thick: return heavy
        case heavy: return extraThick
        case extraThick: return massive
        case massive: return ultraThick
        default: return ultraThick
        }
    }
    
    /// Returns the next thinner border width in the scale
    /// - Parameter current: Current border width value
    /// - Returns: Next thinner border width value
    static func thinner(than current: CGFloat) -> CGFloat {
        switch current {
        case ultraThick: return massive
        case massive: return extraThick
        case extraThick: return heavy
        case heavy: return thick
        case thick: return medium
        case medium: return standard
        case standard: return light
        case light: return thin
        case thin: return ultraThin
        case ultraThin: return hairline
        case hairline: return none
        default: return none
        }
    }
    
    /// Returns border width optimized for current display scale
    /// - Parameter width: Base border width
    /// - Returns: Display-optimized border width
    static func displayOptimized(_ width: CGFloat) -> CGFloat {
        #if os(iOS) || os(macOS)
        // On Retina displays, ensure hairlines are visible
        if width == hairline {
            return max(hairline, 1.0 / UIScreen.main.scale)
        }
        #endif
        return width
    }
}

// MARK: - SwiftUI Shape Extensions
public extension Shape {
    
    /// Applies Spinnah border width and color
    /// - Parameters:
    ///   - width: Spinnah border width value
    ///   - color: Border color
    /// - Returns: Shape with border
    func spinnahBorder(width: CGFloat, color: Color) -> some View {
        self.stroke(color, lineWidth: SpinnahBorderWidth.clamped(width))
    }
    
    /// Applies standard component border
    /// - Parameter color: Border color (defaults to border color)
    /// - Returns: Shape with standard border
    func spinnahStandardBorder(color: Color = Color.spinnahBorder) -> some View {
        self.spinnahBorder(width: SpinnahBorderWidth.standard, color: color)
    }
    
    /// Applies thin component border
    /// - Parameter color: Border color (defaults to border color)
    /// - Returns: Shape with thin border
    func spinnahThinBorder(color: Color = Color.spinnahBorder) -> some View {
        self.spinnahBorder(width: SpinnahBorderWidth.thin, color: color)
    }
    
    /// Applies hairline border
    /// - Parameter color: Border color (defaults to border color)
    /// - Returns: Shape with hairline border
    func spinnahHairlineBorder(color: Color = Color.spinnahBorder) -> some View {
        self.spinnahBorder(width: SpinnahBorderWidth.hairline, color: color)
    }
}

// MARK: - SwiftUI View Extensions
public extension View {
    
    /// Applies Spinnah border using overlay
    /// - Parameters:
    ///   - width: Spinnah border width value
    ///   - color: Border color
    ///   - cornerRadius: Corner radius for border
    /// - Returns: View with border overlay
    func spinnahBorder(
        width: CGFloat,
        color: Color,
        cornerRadius: CGFloat = 0
    ) -> some View {
        self.overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(color, lineWidth: SpinnahBorderWidth.clamped(width))
        )
    }
    
    /// Applies standard component border
    /// - Parameters:
    ///   - color: Border color (defaults to border color)
    ///   - cornerRadius: Corner radius (defaults to standard card radius)
    /// - Returns: View with standard border
    func spinnahStandardBorder(
        color: Color = Color.spinnahBorder,
        cornerRadius: CGFloat = SpinnahCornerRadius.card
    ) -> some View {
        self.spinnahBorder(
            width: SpinnahBorderWidth.standard,
            color: color,
            cornerRadius: cornerRadius
        )
    }
    
    /// Applies card-style border
    /// - Parameter color: Border color (defaults to border color)
    /// - Returns: View with card border
    func spinnahCardBorder(color: Color = Color.spinnahBorder) -> some View {
        self.spinnahBorder(
            width: SpinnahBorderWidth.card,
            color: color,
            cornerRadius: SpinnahCornerRadius.card
        )
    }
    
    /// Applies button-style border
    /// - Parameter color: Border color (defaults to primary color)
    /// - Returns: View with button border
    func spinnahButtonBorder(color: Color = Color.spinnahPrimary) -> some View {
        self.spinnahBorder(
            width: SpinnahBorderWidth.button,
            color: color,
            cornerRadius: SpinnahCornerRadius.button
        )
    }
    
    /// Applies input field border
    /// - Parameter color: Border color (defaults to border color)
    /// - Returns: View with input border
    func spinnahInputBorder(color: Color = Color.spinnahBorder) -> some View {
        self.spinnahBorder(
            width: SpinnahBorderWidth.input,
            color: color,
            cornerRadius: SpinnahCornerRadius.input
        )
    }
    
    /// Applies focus state border
    /// - Parameter color: Border color (defaults to accent color)
    /// - Returns: View with focus border
    func spinnahFocusBorder(color: Color = Color.spinnahAccent) -> some View {
        self.spinnahBorder(
            width: SpinnahBorderWidth.focus,
            color: color,
            cornerRadius: SpinnahCornerRadius.card
        )
    }
    
    /// Applies error state border
    /// - Parameter color: Border color (defaults to error color)
    /// - Returns: View with error border
    func spinnahErrorBorder(color: Color = Color.spinnahError) -> some View {
        self.spinnahBorder(
            width: SpinnahBorderWidth.error,
            color: color,
            cornerRadius: SpinnahCornerRadius.card
        )
    }
}

// MARK: - Interactive Border States
public extension View {
    
    /// Applies border that changes based on interactive states
    /// - Parameters:
    ///   - isHovered: Whether element is hovered
    ///   - isPressed: Whether element is pressed
    ///   - isFocused: Whether element is focused
    ///   - isDisabled: Whether element is disabled
    ///   - baseColor: Base border color
    /// - Returns: View with state-based border
    func spinnahInteractiveBorder(
        isHovered: Bool = false,
        isPressed: Bool = false,
        isFocused: Bool = false,
        isDisabled: Bool = false,
        baseColor: Color = Color.spinnahBorder
    ) -> some View {
        let width: CGFloat = {
            if isDisabled { return SpinnahBorderWidth.disabled }
            if isFocused { return SpinnahBorderWidth.focus }
            if isPressed { return SpinnahBorderWidth.active }
            if isHovered { return SpinnahBorderWidth.hover }
            return SpinnahBorderWidth.standard
        }()
        
        let color: Color = {
            if isDisabled { return baseColor.spinnahOpacity(SpinnahOpacity.disabled) }
            if isFocused { return Color.spinnahAccent }
            if isPressed { return Color.spinnahPrimary }
            if isHovered { return baseColor }
            return baseColor
        }()
        
        return self
            .spinnahBorder(width: width, color: color, cornerRadius: SpinnahCornerRadius.card)
            .animation(SpinnahAnimations.quickHover.animation, value: isHovered)
            .animation(SpinnahAnimations.buttonPress.animation, value: isPressed)
            .animation(SpinnahAnimations.focus.animation, value: isFocused)
    }
    
    /// Applies animated border changes
    /// - Parameters:
    ///   - width: Target border width
    ///   - color: Target border color
    ///   - cornerRadius: Border corner radius
    ///   - animation: Animation to use
    /// - Returns: View with animated border
    func spinnahAnimatedBorder(
        width: CGFloat,
        color: Color,
        cornerRadius: CGFloat = SpinnahCornerRadius.card,
        animation: SpinnahAnimation = SpinnahAnimations.uiTransition
    ) -> some View {
        self
            .spinnahBorder(width: width, color: color, cornerRadius: cornerRadius)
            .animation(animation.animation, value: width)
            .animation(animation.animation, value: color)
    }
}

// MARK: - Platform-Specific Border Adjustments
public extension SpinnahBorderWidth {
    
    /// Returns border width adjusted for current platform
    /// - Parameter width: Base border width
    /// - Returns: Platform-optimized border width
    static func platformOptimized(_ width: CGFloat) -> CGFloat {
        #if os(macOS)
        // macOS can handle thinner borders better
        return width
        #elseif os(iOS)
        // iOS might need slightly thicker borders for touch targets
        if width < thin {
            return max(width, hairline)
        }
        return width
        #elseif os(visionOS)
        // visionOS might need more prominent borders for depth
        return width * 1.1
        #else
        return width
        #endif
    }
    
    /// Platform-specific border width variants
    enum Platform {
        /// macOS optimized border width
        public static func macOS(_ width: CGFloat) -> CGFloat {
            return width
        }
        
        /// iOS optimized border width
        public static func iOS(_ width: CGFloat) -> CGFloat {
            return max(width, hairline)
        }
        
        /// visionOS optimized border width
        public static func visionOS(_ width: CGFloat) -> CGFloat {
            return width * 1.1
        }
    }
}

// MARK: - Border Style Combinations
public enum SpinnahBorderStyle {
    case none
    case hairline
    case standard
    case thick
    case focus
    case error
    case success
    case warning
    
    var width: CGFloat {
        switch self {
        case .none: return SpinnahBorderWidth.none
        case .hairline: return SpinnahBorderWidth.hairline
        case .standard: return SpinnahBorderWidth.standard
        case .thick: return SpinnahBorderWidth.thick
        case .focus: return SpinnahBorderWidth.focus
        case .error: return SpinnahBorderWidth.error
        case .success: return SpinnahBorderWidth.success
        case .warning: return SpinnahBorderWidth.warning
        }
    }
    
    var color: Color {
        switch self {
        case .none: return .clear
        case .hairline, .standard, .thick: return Color.spinnahBorder
        case .focus: return Color.spinnahAccent
        case .error: return Color.spinnahError
        case .success: return Color.spinnahSuccess
        case .warning: return Color.spinnahWarning
        }
    }
}

public extension View {
    
    /// Applies predefined border style
    /// - Parameters:
    ///   - style: Border style to apply
    ///   - cornerRadius: Corner radius for border
    /// - Returns: View with styled border
    func spinnahBorderStyle(
        _ style: SpinnahBorderStyle,
        cornerRadius: CGFloat = SpinnahCornerRadius.card
    ) -> some View {
        self.spinnahBorder(
            width: style.width,
            color: style.color,
            cornerRadius: cornerRadius
        )
    }
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahBorderWidth_Previews: PreviewProvider {
    @State private static var selectedDemo = "Scale"
    @State private static var isInteracting = false
    
    static var previews: some View {
        ScrollView {
            VStack(spacing: SpinnahSpacing.lg) {
                
                // Control Panel
                VStack(spacing: SpinnahSpacing.sm) {
                    Text("Border Width System Demo")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Picker("Demo Type", selection: $selectedDemo) {
                        Text("Scale").tag("Scale")
                        Text("Components").tag("Components")
                        Text("States").tag("States")
                        Text("Interactive").tag("Interactive")
                    }
                    .pickerStyle(.segmented)
                }
                
                // Demo Content
                Group {
                    switch selectedDemo {
                    case "Scale":
                        borderScaleDemo
                    case "Components":
                        componentBorderDemo
                    case "States":
                        stateBorderDemo
                    case "Interactive":
                        interactiveBorderDemo
                    default:
                        borderScaleDemo
                    }
                }
            }
            .spinnahPageMargins()
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Border Width System")
    }
    
    private static var borderScaleDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // Complete Border Width Scale
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Complete Border Width Scale")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 4), spacing: SpinnahSpacing.md) {
                    borderDemo("none", SpinnahBorderWidth.none)
                    borderDemo("hairline", SpinnahBorderWidth.hairline)
                    borderDemo("ultraThin", SpinnahBorderWidth.ultraThin)
                    borderDemo("thin", SpinnahBorderWidth.thin)
                    borderDemo("light", SpinnahBorderWidth.light)
                    borderDemo("standard", SpinnahBorderWidth.standard)
                    borderDemo("medium", SpinnahBorderWidth.medium)
                    borderDemo("thick", SpinnahBorderWidth.thick)
                    borderDemo("heavy", SpinnahBorderWidth.heavy)
                    borderDemo("extraThick", SpinnahBorderWidth.extraThick)
                    borderDemo("massive", SpinnahBorderWidth.massive)
                    borderDemo("ultraThick", SpinnahBorderWidth.ultraThick)
                }
            }
            
            // Semantic Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Semantic Usage Examples")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: SpinnahSpacing.md) {
                    semanticDemo("button", SpinnahBorderWidth.button)
                    semanticDemo("card", SpinnahBorderWidth.card)
                    semanticDemo("input", SpinnahBorderWidth.input)
                    semanticDemo("focus", SpinnahBorderWidth.focus)
                    semanticDemo("divider", SpinnahBorderWidth.divider)
                    semanticDemo("avatar", SpinnahBorderWidth.avatar)
                }
            }
        }
    }
    
    private static var componentBorderDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // Button Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Button Border Examples")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    buttonBorderExample("Primary")
                    buttonBorderExample("Secondary")
                    buttonBorderExample("Outline")
                }
            }
            
            // Card Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Card Border Examples")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    cardBorderExample("Standard Card")
                    cardBorderExample("Outlined Card")
                    cardBorderExample("Elevated Card")
                }
            }
            
            // Input Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Input Border Examples")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                VStack(spacing: SpinnahSpacing.sm) {
                    inputBorderExample("Text Field")
                    inputBorderExample("Text Area")
                    inputBorderExample("Select Field")
                }
            }
        }
    }
    
    private static var stateBorderDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // State Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Border State Examples")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: SpinnahSpacing.md) {
                    stateBorderExample("Normal", .standard)
                    stateBorderExample("Focus", .focus)
                    stateBorderExample("Error", .error)
                    stateBorderExample("Success", .success)
                    stateBorderExample("Warning", .warning)
                    stateBorderExample("Disabled", .hairline)
                }
            }
            
            // Color Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Border Color Examples")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    colorBorderExample("Default", Color.spinnahBorder)
                    colorBorderExample("Primary", Color.spinnahPrimary)
                    colorBorderExample("Accent", Color.spinnahAccent)
                }
            }
        }
    }
    
    private static var interactiveBorderDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Interactive Border States")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                Button("Toggle Interaction States") {
                    isInteracting.toggle()
                }
                .spinnahButtonAnimation()
                
                HStack(spacing: SpinnahSpacing.md) {
                    interactiveElement("Button", isHovered: isInteracting)
                    interactiveElement("Input", isFocused: isInteracting)
                    interactiveElement("Card", isHovered: isInteracting)
                }
            }
            
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Animated Border Changes")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    animatedBorderExample("Width", targetWidth: isInteracting ? SpinnahBorderWidth.thick : SpinnahBorderWidth.thin)
                    animatedBorderExample("Color", targetColor: isInteracting ? Color.spinnahPrimary : Color.spinnahBorder)
                    animatedBorderExample("Style", targetWidth: isInteracting ? SpinnahBorderWidth.focus : SpinnahBorderWidth.standard)
                }
            }
        }
    }
    
    // Helper demo components
    private static func borderDemo(_ name: String, _ width: CGFloat) -> some View {
        VStack(spacing: 4) {
            Rectangle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 60, height: 40)
                .spinnahBorder(width: width, color: Color.spinnahPrimary, cornerRadius: SpinnahCornerRadius.sm)
            
            Text(name)
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
            
            Text("\(width, specifier: "%.1f")pt")
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func semanticDemo(_ name: String, _ width: CGFloat) -> some View {
        VStack(spacing: 4) {
            RoundedRectangle(cornerRadius: 6)
                .fill(Color.spinnahCardElevated)
                .frame(width: 70, height: 45)
                .spinnahBorder(width: width, color: Color.spinnahBorder, cornerRadius: 6)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func buttonBorderExample(_ label: String) -> some View {
        Text(label)
            .font(SpinnahFonts.labelM)
            .foregroundStyle(Color.spinnahPrimary)
            .padding(.horizontal, SpinnahSpacing.sm)
            .padding(.vertical, SpinnahSpacing.xs)
            .spinnahButtonBorder()
    }
    
    private static func cardBorderExample(_ title: String) -> some View {
        VStack(spacing: 4) {
            Text("Card Content")
                .font(SpinnahFonts.labelS)
                .foregroundStyle(Color.spinnahTextPrimary)
            
            Text("Sample content")
                .font(SpinnahFonts.bodyS)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
        .padding(SpinnahSpacing.sm)
        .frame(width: 100, height: 70)
        .background(Color.spinnahCardElevated)
        .spinnahCardBorder()
        .overlay(
            Text(title)
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
                .padding(.top, -25)
        )
    }
    
    private static func inputBorderExample(_ placeholder: String) -> some View {
        Text(placeholder)
            .font(SpinnahFonts.bodyM)
            .foregroundStyle(Color.spinnahTextSecondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(SpinnahSpacing.sm)
            .background(Color.spinnahCardElevated)
            .spinnahInputBorder()
    }
    
    private static func stateBorderExample(_ state: String, _ width: CGFloat) -> some View {
        let color: Color = {
            switch state {
            case "Focus": return Color.spinnahAccent
            case "Error": return Color.spinnahError
            case "Success": return Color.spinnahSuccess
            case "Warning": return Color.spinnahWarning
            default: return Color.spinnahBorder
            }
        }()
        
        return VStack(spacing: 4) {
            Rectangle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 80, height: 50)
                .spinnahBorder(width: width, color: color, cornerRadius: SpinnahCornerRadius.card)
            
            Text(state)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func colorBorderExample(_ name: String, _ color: Color) -> some View {
        VStack(spacing: 4) {
            Circle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 50, height: 50)
                .spinnahBorder(width: SpinnahBorderWidth.standard, color: color)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func interactiveElement(_ type: String, isHovered: Bool = false, isFocused: Bool = false) -> some View {
        Rectangle()
            .fill(Color.spinnahCardElevated)
            .frame(width: 80, height: 50)
            .spinnahInteractiveBorder(isHovered: isHovered, isFocused: isFocused)
            .overlay(
                Text(type)
                    .font(SpinnahFonts.labelS)
                    .foregroundStyle(Color.spinnahTextPrimary)
            )
    }
    
    private static func animatedBorderExample(_ name: String, targetWidth: CGFloat = SpinnahBorderWidth.standard, targetColor: Color = Color.spinnahBorder) -> some View {
        VStack(spacing: 4) {
            Rectangle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 60, height: 40)
                .spinnahAnimatedBorder(width: targetWidth, color: targetColor)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
}
#endif
