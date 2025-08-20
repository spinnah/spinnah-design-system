//
//  Opacity.swift (file version 1)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Defines the complete opacity system for consistent transparency,
//  visual hierarchy, and state management across all Spinnah apps.
//  Designed to work seamlessly with the color and shadow systems.
//

import SwiftUI

// MARK: - Core Opacity Scale
public enum SpinnahOpacity {
    
    // MARK: - Transparency Levels (Lightest to Darkest)
    
    /// Invisible - 0% opacity
    /// Use for: Hidden elements, fully transparent overlays
    public static let invisible: Double = 0.0
    
    /// Barely visible - 2% opacity
    /// Use for: Ultra-subtle hints, barely perceptible overlays
    public static let ghost: Double = 0.02
    
    /// Very subtle - 5% opacity
    /// Use for: Subtle background tints, very light overlays
    public static let whisper: Double = 0.05
    
    /// Subtle - 10% opacity
    /// Use for: Light background overlays, subtle tints
    public static let subtle: Double = 0.1
    
    /// Light - 15% opacity
    /// Use for: Gentle overlays, soft background effects
    public static let light: Double = 0.15
    
    /// Gentle - 20% opacity
    /// Use for: Hover state backgrounds, gentle emphasis
    public static let gentle: Double = 0.2
    
    // MARK: - Standard Transparency (Most Common)
    
    /// Soft - 30% opacity
    /// Use for: Disabled text, secondary overlays
    public static let soft: Double = 0.3
    
    /// Medium - 40% opacity
    /// Use for: Placeholder text, inactive elements
    public static let medium: Double = 0.4
    
    /// Standard - 50% opacity
    /// Use for: Modal backgrounds, standard overlays
    public static let standard: Double = 0.5
    
    /// Moderate - 60% opacity
    /// Use for: Semi-prominent overlays, loading states
    public static let moderate: Double = 0.6
    
    // MARK: - Strong Transparency
    
    /// Strong - 70% opacity
    /// Use for: Prominent overlays, focus backgrounds
    public static let strong: Double = 0.7
    
    /// Heavy - 80% opacity
    /// Use for: Dark overlays, prominent blocking
    public static let heavy: Double = 0.8
    
    /// Dense - 90% opacity
    /// Use for: Nearly opaque overlays, strong emphasis
    public static let dense: Double = 0.9
    
    /// Intense - 95% opacity
    /// Use for: Almost solid overlays, maximum emphasis
    public static let intense: Double = 0.95
    
    /// Opaque - 100% opacity
    /// Use for: Fully visible elements, no transparency
    public static let opaque: Double = 1.0
}

// MARK: - Semantic Opacity Aliases
public extension SpinnahOpacity {
    
    // MARK: - Interactive States
    
    /// Hover state overlay opacity
    static let hover = gentle
    
    /// Active/pressed state opacity
    static let active = soft
    
    /// Focus state background opacity
    static let focus = light
    
    /// Selected state overlay opacity
    static let selected = gentle
    
    /// Disabled element opacity
    static let disabled = medium
    
    /// Loading state opacity
    static let loading = moderate
    
    // MARK: - Text Hierarchy
    
    /// Primary text opacity (fully visible)
    static let textPrimary = opaque
    
    /// Secondary text opacity
    static let textSecondary = strong
    
    /// Tertiary text opacity
    static let textTertiary = moderate
    
    /// Placeholder text opacity
    static let textPlaceholder = medium
    
    /// Disabled text opacity
    static let textDisabled = soft
    
    /// Caption text opacity
    static let textCaption = moderate
    
    // MARK: - Background Overlays
    
    /// Modal backdrop opacity
    static let modalBackdrop = standard
    
    /// Sheet backdrop opacity
    static let sheetBackdrop = medium
    
    /// Popover backdrop opacity
    static let popoverBackdrop = light
    
    /// Tooltip backdrop opacity
    static let tooltipBackdrop = subtle
    
    /// Navigation overlay opacity
    static let navigationOverlay = heavy
    
    /// Sidebar overlay opacity
    static let sidebarOverlay = moderate
    
    // MARK: - Visual Effects
    
    /// Frosted glass effect opacity
    static let frostedGlass = heavy
    
    /// Blur overlay opacity
    static let blurOverlay = strong
    
    /// Gradient overlay opacity
    static let gradientOverlay = moderate
    
    /// Shadow overlay opacity (for colored shadows)
    static let shadowOverlay = light
    
    /// Brand overlay opacity
    static let brandOverlay = subtle
    
    // MARK: - Component States
    
    /// Card hover overlay
    static let cardHover = whisper
    
    /// Card selection overlay
    static let cardSelected = light
    
    /// Button hover overlay
    static let buttonHover = subtle
    
    /// Button active overlay
    static let buttonActive = light
    
    /// Input focus overlay
    static let inputFocus = whisper
    
    /// List item hover overlay
    static let listItemHover = ghost
    
    /// Toolbar overlay
    static let toolbarOverlay = moderate
    
    // MARK: - Status Overlays
    
    /// Success state overlay
    static let successOverlay = light
    
    /// Warning state overlay
    static let warningOverlay = light
    
    /// Error state overlay
    static let errorOverlay = light
    
    /// Info state overlay
    static let infoOverlay = light
    
    /// Loading overlay
    static let loadingOverlay = standard
}

// MARK: - Opacity Utility Methods
public extension SpinnahOpacity {
    
    /// Returns opacity value clamped between 0.0 and 1.0
    /// - Parameter value: Input opacity value
    /// - Returns: Clamped opacity value
    static func clamped(_ value: Double) -> Double {
        return max(0.0, min(1.0, value))
    }
    
    /// Returns inverted opacity (1.0 - opacity)
    /// - Parameter opacity: Input opacity value
    /// - Returns: Inverted opacity value
    static func inverted(_ opacity: Double) -> Double {
        return clamped(1.0 - opacity)
    }
    
    /// Returns opacity value scaled by a factor
    /// - Parameters:
    ///   - opacity: Base opacity value
    ///   - factor: Scale factor
    /// - Returns: Scaled opacity value
    static func scaled(_ opacity: Double, by factor: Double) -> Double {
        return clamped(opacity * factor)
    }
    
    /// Returns opacity value blended with another opacity
    /// - Parameters:
    ///   - opacity1: First opacity value
    ///   - opacity2: Second opacity value
    ///   - ratio: Blend ratio (0.0 = first, 1.0 = second)
    /// - Returns: Blended opacity value
    static func blended(_ opacity1: Double, _ opacity2: Double, ratio: Double) -> Double {
        let clampedRatio = clamped(ratio)
        return opacity1 * (1.0 - clampedRatio) + opacity2 * clampedRatio
    }
    
    /// Returns the next higher opacity value in the scale
    /// - Parameter current: Current opacity value
    /// - Returns: Next higher opacity value
    static func higher(than current: Double) -> Double {
        switch current {
        case invisible: return ghost
        case ghost: return whisper
        case whisper: return subtle
        case subtle: return light
        case light: return gentle
        case gentle: return soft
        case soft: return medium
        case medium: return standard
        case standard: return moderate
        case moderate: return strong
        case strong: return heavy
        case heavy: return dense
        case dense: return intense
        case intense: return opaque
        default: return opaque
        }
    }
    
    /// Returns the next lower opacity value in the scale
    /// - Parameter current: Current opacity value
    /// - Returns: Next lower opacity value
    static func lower(than current: Double) -> Double {
        switch current {
        case opaque: return intense
        case intense: return dense
        case dense: return heavy
        case heavy: return strong
        case strong: return moderate
        case moderate: return standard
        case standard: return medium
        case medium: return soft
        case soft: return gentle
        case gentle: return light
        case light: return subtle
        case subtle: return whisper
        case whisper: return ghost
        case ghost: return invisible
        default: return invisible
        }
    }
}

// MARK: - SwiftUI Color Extensions
public extension Color {
    
    /// Applies Spinnah opacity to color
    /// - Parameter opacity: Spinnah opacity value
    /// - Returns: Color with applied opacity
    func spinnahOpacity(_ opacity: Double) -> Color {
        return self.opacity(SpinnahOpacity.clamped(opacity))
    }
    
    /// Creates a hover overlay color
    func spinnahHoverOverlay() -> Color {
        return self.spinnahOpacity(SpinnahOpacity.hover)
    }
    
    /// Creates an active overlay color
    func spinnahActiveOverlay() -> Color {
        return self.spinnahOpacity(SpinnahOpacity.active)
    }
    
    /// Creates a disabled version of the color
    func spinnahDisabled() -> Color {
        return self.spinnahOpacity(SpinnahOpacity.disabled)
    }
    
    /// Creates a subtle overlay version of the color
    func spinnahSubtleOverlay() -> Color {
        return self.spinnahOpacity(SpinnahOpacity.subtle)
    }
    
    /// Creates a modal backdrop version of the color
    func spinnahModalBackdrop() -> Color {
        return self.spinnahOpacity(SpinnahOpacity.modalBackdrop)
    }
}

// MARK: - SwiftUI View Extensions
public extension View {
    
    /// Applies Spinnah opacity to view
    /// - Parameter opacity: Spinnah opacity value
    /// - Returns: View with applied opacity
    func spinnahOpacity(_ opacity: Double) -> some View {
        self.opacity(SpinnahOpacity.clamped(opacity))
    }
    
    /// Applies disabled appearance
    func spinnahDisabled(_ isDisabled: Bool = true) -> some View {
        self.spinnahOpacity(isDisabled ? SpinnahOpacity.disabled : SpinnahOpacity.opaque)
    }
    
    /// Applies loading appearance
    func spinnahLoading(_ isLoading: Bool = true) -> some View {
        self.spinnahOpacity(isLoading ? SpinnahOpacity.loading : SpinnahOpacity.opaque)
    }
    
    /// Applies subtle appearance
    func spinnahSubtle() -> some View {
        self.spinnahOpacity(SpinnahOpacity.subtle)
    }
    
    /// Creates an overlay with specified Spinnah opacity
    /// - Parameters:
    ///   - color: Overlay color
    ///   - opacity: Spinnah opacity value
    /// - Returns: View with overlay
    func spinnahOverlay(color: Color, opacity: Double) -> some View {
        self.overlay(color.spinnahOpacity(opacity))
    }
    
    /// Creates a hover overlay
    /// - Parameter color: Overlay color (defaults to primary)
    /// - Returns: View with hover overlay
    func spinnahHoverOverlay(color: Color = Color.spinnahPrimary) -> some View {
        self.spinnahOverlay(color: color, opacity: SpinnahOpacity.hover)
    }
    
    /// Creates an active overlay
    /// - Parameter color: Overlay color (defaults to primary)
    /// - Returns: View with active overlay
    func spinnahActiveOverlay(color: Color = Color.spinnahPrimary) -> some View {
        self.spinnahOverlay(color: color, opacity: SpinnahOpacity.active)
    }
    
    /// Creates a selection overlay
    /// - Parameter color: Overlay color (defaults to accent)
    /// - Returns: View with selection overlay
    func spinnahSelectionOverlay(color: Color = Color.spinnahAccent) -> some View {
        self.spinnahOverlay(color: color, opacity: SpinnahOpacity.selected)
    }
}

// MARK: - Interactive State Management
public extension View {
    
    /// Applies opacity-based interactive states
    /// - Parameters:
    ///   - isHovered: Whether element is hovered
    ///   - isPressed: Whether element is pressed
    ///   - isDisabled: Whether element is disabled
    /// - Returns: View with state-based opacity
    func spinnahInteractiveOpacity(
        isHovered: Bool = false,
        isPressed: Bool = false,
        isDisabled: Bool = false
    ) -> some View {
        let opacity: Double = {
            if isDisabled { return SpinnahOpacity.disabled }
            if isPressed { return SpinnahOpacity.active }
            if isHovered { return SpinnahOpacity.hover }
            return SpinnahOpacity.opaque
        }()
        
        return self
            .spinnahOpacity(opacity)
            .animation(SpinnahAnimations.quickHover.animation, value: isHovered)
            .animation(SpinnahAnimations.buttonPress.animation, value: isPressed)
    }
    
    /// Applies animated opacity changes
    /// - Parameters:
    ///   - opacity: Target opacity
    ///   - animation: Animation to use
    /// - Returns: View with animated opacity
    func spinnahAnimatedOpacity(
        _ opacity: Double,
        animation: SpinnahAnimation = SpinnahAnimations.smoothFade
    ) -> some View {
        self
            .spinnahOpacity(opacity)
            .animation(animation.animation, value: opacity)
    }
}

// MARK: - Accessibility Opacity Adjustments
public extension SpinnahOpacity {
    
    /// Returns opacity adjusted for accessibility preferences
    /// - Parameters:
    ///   - baseOpacity: Base opacity value
    ///   - increaseContrast: Whether to increase contrast
    /// - Returns: Accessibility-adjusted opacity
    static func accessibilityAdjusted(
        _ baseOpacity: Double,
        increaseContrast: Bool = false
    ) -> Double {
        if increaseContrast {
            // Increase contrast by making transparent elements more opaque
            return min(opaque, baseOpacity * 1.3)
        }
        return baseOpacity
    }
    
    /// Common accessibility-adjusted opacity values
    enum Accessibility {
        /// Accessible subtle opacity (increased for better contrast)
        public static let subtle = SpinnahOpacity.accessibilityAdjusted(SpinnahOpacity.subtle, increaseContrast: true)
        
        /// Accessible medium opacity (increased for better contrast)
        public static let medium = SpinnahOpacity.accessibilityAdjusted(SpinnahOpacity.medium, increaseContrast: true)
        
        /// Accessible disabled opacity (increased for better visibility)
        public static let disabled = SpinnahOpacity.accessibilityAdjusted(SpinnahOpacity.disabled, increaseContrast: true)
    }
}

// MARK: - Dark Mode Opacity Adjustments
public extension SpinnahOpacity {
    
    /// Returns opacity adjusted for dark mode
    /// - Parameter baseOpacity: Base opacity value
    /// - Returns: Dark mode adjusted opacity
    static func darkModeAdjusted(_ baseOpacity: Double) -> Double {
        // In dark mode, we often need slightly higher opacity for visibility
        return min(opaque, baseOpacity * 1.1)
    }
    
    /// Dark mode specific opacity values
    enum DarkMode {
        /// Dark mode adjusted subtle opacity
        public static let subtle = SpinnahOpacity.darkModeAdjusted(SpinnahOpacity.subtle)
        
        /// Dark mode adjusted medium opacity
        public static let medium = SpinnahOpacity.darkModeAdjusted(SpinnahOpacity.medium)
        
        /// Dark mode adjusted disabled opacity
        public static let disabled = SpinnahOpacity.darkModeAdjusted(SpinnahOpacity.disabled)
        
        /// Dark mode adjusted overlay opacity
        public static let overlay = SpinnahOpacity.darkModeAdjusted(SpinnahOpacity.standard)
    }
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahOpacity_Previews: PreviewProvider {
    @State private static var selectedDemo = "Scale"
    @State private static var isInteracting = false
    
    static var previews: some View {
        ScrollView {
            VStack(spacing: SpinnahSpacing.lg) {
                
                // Control Panel
                VStack(spacing: SpinnahSpacing.sm) {
                    Text("Opacity System Demo")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Picker("Demo Type", selection: $selectedDemo) {
                        Text("Scale").tag("Scale")
                        Text("Text").tag("Text")
                        Text("Overlays").tag("Overlays")
                        Text("Interactive").tag("Interactive")
                    }
                    .pickerStyle(.segmented)
                }
                
                // Demo Content
                Group {
                    switch selectedDemo {
                    case "Scale":
                        opacityScaleDemo
                    case "Text":
                        textOpacityDemo
                    case "Overlays":
                        overlayDemo
                    case "Interactive":
                        interactiveDemo
                    default:
                        opacityScaleDemo
                    }
                }
            }
            .spinnahPageMargins()
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Opacity System")
    }
    
    private static var opacityScaleDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // Complete Opacity Scale
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Complete Opacity Scale")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5), spacing: SpinnahSpacing.sm) {
                    opacityDemo("invisible", SpinnahOpacity.invisible)
                    opacityDemo("ghost", SpinnahOpacity.ghost)
                    opacityDemo("whisper", SpinnahOpacity.whisper)
                    opacityDemo("subtle", SpinnahOpacity.subtle)
                    opacityDemo("light", SpinnahOpacity.light)
                    opacityDemo("gentle", SpinnahOpacity.gentle)
                    opacityDemo("soft", SpinnahOpacity.soft)
                    opacityDemo("medium", SpinnahOpacity.medium)
                    opacityDemo("standard", SpinnahOpacity.standard)
                    opacityDemo("moderate", SpinnahOpacity.moderate)
                    opacityDemo("strong", SpinnahOpacity.strong)
                    opacityDemo("heavy", SpinnahOpacity.heavy)
                    opacityDemo("dense", SpinnahOpacity.dense)
                    opacityDemo("intense", SpinnahOpacity.intense)
                    opacityDemo("opaque", SpinnahOpacity.opaque)
                }
            }
            
            // Semantic Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Semantic Usage Examples")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 4), spacing: SpinnahSpacing.sm) {
                    semanticDemo("hover", SpinnahOpacity.hover)
                    semanticDemo("active", SpinnahOpacity.active)
                    semanticDemo("disabled", SpinnahOpacity.disabled)
                    semanticDemo("loading", SpinnahOpacity.loading)
                }
            }
        }
    }
    
    private static var textOpacityDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Text Hierarchy with Opacity")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                VStack(alignment: .leading, spacing: SpinnahSpacing.xs) {
                    Text("Primary Text (100%)")
                        .font(SpinnahFonts.bodyL)
                        .foregroundStyle(Color.spinnahTextPrimary)
                        .spinnahOpacity(SpinnahOpacity.textPrimary)
                    
                    Text("Secondary Text (70%)")
                        .font(SpinnahFonts.bodyM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                        .spinnahOpacity(SpinnahOpacity.textSecondary)
                    
                    Text("Tertiary Text (60%)")
                        .font(SpinnahFonts.bodyM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                        .spinnahOpacity(SpinnahOpacity.textTertiary)
                    
                    Text("Placeholder Text (40%)")
                        .font(SpinnahFonts.bodyM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                        .spinnahOpacity(SpinnahOpacity.textPlaceholder)
                    
                    Text("Disabled Text (30%)")
                        .font(SpinnahFonts.bodyM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                        .spinnahOpacity(SpinnahOpacity.textDisabled)
                    
                    Text("Caption Text (60%)")
                        .font(SpinnahFonts.captionL)
                        .foregroundStyle(Color.spinnahTextPrimary)
                        .spinnahOpacity(SpinnahOpacity.textCaption)
                }
                .padding(SpinnahSpacing.md)
                .background(Color.spinnahCardElevated)
                .cornerRadius(SpinnahCornerRadius.card)
            }
        }
    }
    
    private static var overlayDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Background Overlays")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: SpinnahSpacing.md) {
                    overlayExample("Modal Backdrop", SpinnahOpacity.modalBackdrop)
                    overlayExample("Sheet Backdrop", SpinnahOpacity.sheetBackdrop)
                    overlayExample("Navigation Overlay", SpinnahOpacity.navigationOverlay)
                    overlayExample("Frosted Glass", SpinnahOpacity.frostedGlass)
                }
            }
            
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Component Overlays")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    componentOverlayExample("Card Hover", SpinnahOpacity.cardHover)
                    componentOverlayExample("Button Active", SpinnahOpacity.buttonActive)
                    componentOverlayExample("Selection", SpinnahOpacity.selected)
                }
            }
        }
    }
    
    private static var interactiveDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Interactive State Opacity")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    interactiveButton("Normal")
                    interactiveButton("Hover")
                    interactiveButton("Active")
                    interactiveButton("Disabled")
                }
            }
            
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Animated Opacity Changes")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                Button("Toggle Animation") {
                    isInteracting.toggle()
                }
                .spinnahButtonAnimation()
                
                HStack(spacing: SpinnahSpacing.md) {
                    animatedExample("Fade", targetOpacity: isInteracting ? SpinnahOpacity.opaque : SpinnahOpacity.whisper)
                    animatedExample("Pulse", targetOpacity: isInteracting ? SpinnahOpacity.intense : SpinnahOpacity.gentle)
                    animatedExample("Loading", targetOpacity: isInteracting ? SpinnahOpacity.loading : SpinnahOpacity.opaque)
                }
            }
        }
    }
    
    // Helper demo components
    private static func opacityDemo(_ name: String, _ opacity: Double) -> some View {
        VStack(spacing: 4) {
            Rectangle()
                .fill(Color.spinnahPrimary)
                .frame(width: 40, height: 30)
                .spinnahOpacity(opacity)
            
            Text(name)
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
            
            Text("\(Int(opacity * 100))%")
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func semanticDemo(_ name: String, _ opacity: Double) -> some View {
        VStack(spacing: 4) {
            RoundedRectangle(cornerRadius: 6)
                .fill(Color.spinnahSecondary)
                .frame(width: 50, height: 30)
                .spinnahOpacity(opacity)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func overlayExample(_ name: String, _ opacity: Double) -> some View {
        ZStack {
            // Background content
            VStack {
                Text("Background Content")
                    .font(SpinnahFonts.labelM)
                    .foregroundStyle(Color.spinnahTextPrimary)
                
                Text("This shows how overlays affect visibility")
                    .font(SpinnahFonts.bodyS)
                    .foregroundStyle(Color.spinnahTextSecondary)
                    .multilineTextAlignment(.center)
            }
            .padding(SpinnahSpacing.sm)
            .frame(width: 140, height: 80)
            .background(Color.spinnahCardElevated)
            .cornerRadius(SpinnahCornerRadius.card)
            
            // Overlay
            Rectangle()
                .fill(Color.black)
                .spinnahOpacity(opacity)
                .cornerRadius(SpinnahCornerRadius.card)
            
            // Overlay label
            VStack {
                Text(name)
                    .font(SpinnahFonts.labelS)
                    .foregroundStyle(.white)
                
                Text("\(Int(opacity * 100))%")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(.white.opacity(0.8))
            }
        }
        .frame(width: 140, height: 80)
    }
    
    private static func componentOverlayExample(_ name: String, _ opacity: Double) -> some View {
        ZStack {
            Rectangle()
                .fill(Color.spinnahCardElevated)
                .frame(width: 80, height: 60)
                .cornerRadius(SpinnahCornerRadius.card)
            
            Rectangle()
                .fill(Color.spinnahPrimary)
                .spinnahOpacity(opacity)
                .cornerRadius(SpinnahCornerRadius.card)
            
            VStack(spacing: 2) {
                Text(name)
                    .font(SpinnahFonts.captionL)
                    .foregroundStyle(Color.spinnahTextPrimary)
                
                Text("\(Int(opacity * 100))%")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(Color.spinnahTextSecondary)
            }
        }
        .frame(width: 80, height: 60)
    }
    
    private static func interactiveButton(_ state: String) -> some View {
        @State var isHovered = false
        @State var isPressed = false
        
        let opacity: Double = {
            switch state {
            case "Disabled": return SpinnahOpacity.disabled
            case "Active": return SpinnahOpacity.active
            case "Hover": return SpinnahOpacity.hover
            default: return SpinnahOpacity.opaque
            }
        }()
        
        return Button(action: {}) {
            Text(state)
                .font(SpinnahFonts.labelS)
                .foregroundStyle(.white)
                .padding(.horizontal, SpinnahSpacing.sm)
                .padding(.vertical, SpinnahSpacing.xs)
                .background(Color.spinnahPrimary)
                .cornerRadius(SpinnahCornerRadius.button)
        }
        .spinnahOpacity(opacity)
        .disabled(state == "Disabled")
        .buttonStyle(.plain)
    }
    
    private static func animatedExample(_ name: String, targetOpacity: Double) -> some View {
        VStack(spacing: 4) {
            Circle()
                .fill(Color.spinnahGradientStart)
                .frame(width: 40, height: 40)
                .spinnahAnimatedOpacity(targetOpacity)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
}
#endif
