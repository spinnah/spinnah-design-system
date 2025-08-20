//===========================================================================
//  CornerRadius.swift (file version 2)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Defines complete corner radius values used across Spinnah UI elements.
//  Includes fine-grained options for different component types and
//  semantic aliases for common use cases.
//===========================================================================

import SwiftUI

// MARK: - Core Corner Radius Scale
public enum SpinnahCornerRadius {
    
    // MARK: - Sharp to Subtle
    
    /// No corner radius - 0pt
    /// Use for: Sharp rectangular elements, dividers, borders
    public static let none: CGFloat = 0
    
    /// Extra small corner radius - 2pt
    /// Use for: Input fields, small tags, tight UI elements
    public static let xs: CGFloat = 2
    
    /// Small corner radius - 4pt
    /// Use for: Buttons, form elements, small cards
    public static let sm: CGFloat = 4
    
    /// Small-medium corner radius - 6pt
    /// Use for: Toolbar buttons, compact components
    public static let smPlus: CGFloat = 6
    
    // MARK: - Standard Rounding
    
    /// Medium corner radius - 8pt
    /// Use for: Standard cards, panels, modals
    public static let md: CGFloat = 8
    
    /// Medium-large corner radius - 10pt
    /// Use for: Elevated cards, prominent panels
    public static let mdPlus: CGFloat = 10
    
    /// Large corner radius - 12pt
    /// Use for: Large cards, main content containers
    public static let lg: CGFloat = 12
    
    /// Large-plus corner radius - 16pt
    /// Use for: Hero cards, feature containers
    public static let lgPlus: CGFloat = 16
    
    // MARK: - Prominent Rounding
    
    /// Extra large corner radius - 20pt
    /// Use for: Pill-shaped buttons, prominent elements
    public static let xl: CGFloat = 20
    
    /// Extra large plus - 24pt
    /// Use for: Large pill buttons, rounded containers
    public static let xlPlus: CGFloat = 24
    
    /// Double extra large - 28pt
    /// Use for: Very rounded containers, soft UI elements
    public static let xxl: CGFloat = 28
    
    /// Triple extra large - 32pt
    /// Use for: Highly rounded design elements
    public static let xxxl: CGFloat = 32
    
    // MARK: - Special Cases
    
    /// Pill corner radius - 50pt
    /// Use for: Pill-shaped buttons, tags, navigation pills
    public static let pill: CGFloat = 50
    
    /// Circle corner radius - 999pt
    /// Use for: Perfect circles, profile images, icon containers
    public static let circle: CGFloat = 999
}

// MARK: - Semantic Corner Radius Aliases
public extension SpinnahCornerRadius {
    
    // MARK: - Component Types
    
    /// Standard button corner radius
    static let button = sm
    
    /// Large/primary button corner radius
    static let buttonLarge = smPlus
    
    /// Pill-shaped button corner radius
    static let buttonPill = pill
    
    /// Input field corner radius
    static let input = xs
    
    /// Card corner radius (most common)
    static let card = md
    
    /// Elevated card corner radius
    static let cardElevated = lg
    
    /// Compact card corner radius
    static let cardCompact = smPlus
    
    /// Modal/sheet corner radius
    static let modal = lgPlus
    
    /// Panel/container corner radius
    static let panel = md
    
    /// Tag/label corner radius
    static let tag = xs
    
    /// Badge corner radius
    static let badge = sm
    
    /// Toolbar button corner radius
    static let toolbarButton = xs
    
    /// Navigation ornament corner radius
    static let navigationOrnament = xl
    
    // MARK: - Interactive Elements
    
    /// Standard interactive element corner radius
    static let interactive = sm
    
    /// Prominent interactive element corner radius
    static let interactiveProminent = smPlus
    
    /// Subtle interactive element corner radius
    static let interactiveSubtle = xs
    
    // MARK: - Content Types
    
    /// Image container corner radius
    static let imageContainer = md
    
    /// Image thumbnail corner radius
    static let imageThumbnail = smPlus
    
    /// Avatar corner radius (use circle for perfect circles)
    static let avatar = lg
    
    /// Icon container corner radius
    static let iconContainer = smPlus
    
    /// Code block corner radius
    static let codeBlock = md
    
    /// Quote/callout corner radius
    static let callout = lg
}

// MARK: - Corner Radius Convenience Methods
public extension SpinnahCornerRadius {
    
    /// Returns corner radius value multiplied by a factor
    /// - Parameters:
    ///   - base: Base corner radius value
    ///   - multiplier: Multiplication factor
    /// - Returns: Calculated corner radius
    static func scaled(_ base: CGFloat, by multiplier: Double) -> CGFloat {
        return base * multiplier
    }
    
    /// Returns the next larger corner radius value in the scale
    /// - Parameter current: Current corner radius value
    /// - Returns: Next larger value, or same if at maximum
    static func larger(than current: CGFloat) -> CGFloat {
        switch current {
        case none: return xs
        case xs: return sm
        case sm: return smPlus
        case smPlus: return md
        case md: return mdPlus
        case mdPlus: return lg
        case lg: return lgPlus
        case lgPlus: return xl
        case xl: return xlPlus
        case xlPlus: return xxl
        case xxl: return xxxl
        case xxxl: return pill
        case pill: return circle
        default: return current
        }
    }
    
    /// Returns the next smaller corner radius value in the scale
    /// - Parameter current: Current corner radius value
    /// - Returns: Next smaller value, or same if at minimum
    static func smaller(than current: CGFloat) -> CGFloat {
        switch current {
        case circle: return pill
        case pill: return xxxl
        case xxxl: return xxl
        case xxl: return xlPlus
        case xlPlus: return xl
        case xl: return lgPlus
        case lgPlus: return lg
        case lg: return mdPlus
        case mdPlus: return md
        case md: return smPlus
        case smPlus: return sm
        case sm: return xs
        case xs: return none
        default: return current
        }
    }
    
    /// Creates a corner radius that adapts based on component size
    /// - Parameters:
    ///   - size: Size of the component
    ///   - ratio: Ratio of radius to size (default: 0.1)
    /// - Returns: Calculated adaptive corner radius
    static func adaptive(for size: CGFloat, ratio: Double = 0.1) -> CGFloat {
        return size * ratio
    }
}

// MARK: - SwiftUI Shape Extensions
public extension RoundedRectangle {
    
    /// Creates a rounded rectangle with Spinnah corner radius
    /// - Parameter radius: Spinnah corner radius value
    /// - Returns: RoundedRectangle with specified radius
    static func spinnah(_ radius: CGFloat) -> RoundedRectangle {
        RoundedRectangle(cornerRadius: radius, style: .continuous)
    }
    
    /// Creates a card-style rounded rectangle
    static let spinnahCard = RoundedRectangle.spinnah(SpinnahCornerRadius.card)
    
    /// Creates a button-style rounded rectangle
    static let spinnahButton = RoundedRectangle.spinnah(SpinnahCornerRadius.button)
    
    /// Creates a pill-style rounded rectangle
    static let spinnahPill = RoundedRectangle.spinnah(SpinnahCornerRadius.pill)
}

// MARK: - SwiftUI View Extensions
public extension View {
    
    /// Applies Spinnah corner radius clipping
    /// - Parameter radius: Corner radius value
    /// - Returns: View clipped to rounded rectangle
    func spinnahCornerRadius(_ radius: CGFloat) -> some View {
        self.clipShape(RoundedRectangle(cornerRadius: radius, style: .continuous))
    }
    
    /// Applies card-style corner radius
    func spinnahCardCorners() -> some View {
        self.spinnahCornerRadius(SpinnahCornerRadius.card)
    }
    
    /// Applies button-style corner radius
    func spinnahButtonCorners() -> some View {
        self.spinnahCornerRadius(SpinnahCornerRadius.button)
    }
    
    /// Applies pill-style corner radius
    func spinnahPillCorners() -> some View {
        self.spinnahCornerRadius(SpinnahCornerRadius.pill)
    }
    
    /// Applies circular clipping
    func spinnahCircle() -> some View {
        self.clipShape(Circle())
    }
}

// MARK: - Corner Radius Combinations
public extension SpinnahCornerRadius {
    
    /// Different corner radius for each corner (advanced usage)
    struct Custom {
        let topLeading: CGFloat
        let topTrailing: CGFloat
        let bottomLeading: CGFloat
        let bottomTrailing: CGFloat
        
        /// Creates custom corner radius configuration
        public init(
            topLeading: CGFloat = 0,
            topTrailing: CGFloat = 0,
            bottomLeading: CGFloat = 0,
            bottomTrailing: CGFloat = 0
        ) {
            self.topLeading = topLeading
            self.topTrailing = topTrailing
            self.bottomLeading = bottomLeading
            self.bottomTrailing = bottomTrailing
        }
        
        /// Rounded only on top corners
        public static let topOnly = Custom(
            topLeading: SpinnahCornerRadius.md,
            topTrailing: SpinnahCornerRadius.md
        )
        
        /// Rounded only on bottom corners
        public static let bottomOnly = Custom(
            bottomLeading: SpinnahCornerRadius.md,
            bottomTrailing: SpinnahCornerRadius.md
        )
        
        /// Rounded only on leading corners
        public static let leadingOnly = Custom(
            topLeading: SpinnahCornerRadius.md,
            bottomLeading: SpinnahCornerRadius.md
        )
        
        /// Rounded only on trailing corners
        public static let trailingOnly = Custom(
            topTrailing: SpinnahCornerRadius.md,
            bottomTrailing: SpinnahCornerRadius.md
        )
    }
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahCornerRadius_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            VStack(spacing: SpinnahSpacing.lg) {
                
                // Basic Corner Radius Scale
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Corner Radius Scale")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: SpinnahSpacing.sm) {
                        cornerDemo("none", SpinnahCornerRadius.none)
                        cornerDemo("xs", SpinnahCornerRadius.xs)
                        cornerDemo("sm", SpinnahCornerRadius.sm)
                        cornerDemo("smPlus", SpinnahCornerRadius.smPlus)
                        cornerDemo("md", SpinnahCornerRadius.md)
                        cornerDemo("mdPlus", SpinnahCornerRadius.mdPlus)
                        cornerDemo("lg", SpinnahCornerRadius.lg)
                        cornerDemo("lgPlus", SpinnahCornerRadius.lgPlus)
                        cornerDemo("xl", SpinnahCornerRadius.xl)
                        cornerDemo("xlPlus", SpinnahCornerRadius.xlPlus)
                        cornerDemo("xxl", SpinnahCornerRadius.xxl)
                        cornerDemo("xxxl", SpinnahCornerRadius.xxxl)
                        cornerDemo("pill", SpinnahCornerRadius.pill)
                        cornerDemo("circle", SpinnahCornerRadius.circle)
                    }
                }
                
                // Semantic Usage Examples
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Semantic Usage Examples")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    VStack(spacing: SpinnahSpacing.sm) {
                        // Button Examples
                        HStack(spacing: SpinnahSpacing.sm) {
                            buttonExample("Button", SpinnahCornerRadius.button)
                            buttonExample("Large", SpinnahCornerRadius.buttonLarge)
                            buttonExample("Pill", SpinnahCornerRadius.buttonPill)
                        }
                        
                        // Card Examples
                        HStack(spacing: SpinnahSpacing.sm) {
                            cardExample("Card", SpinnahCornerRadius.card)
                            cardExample("Elevated", SpinnahCornerRadius.cardElevated)
                            cardExample("Compact", SpinnahCornerRadius.cardCompact)
                        }
                        
                        // Special Examples
                        HStack(spacing: SpinnahSpacing.sm) {
                            specialExample("Avatar", SpinnahCornerRadius.avatar, size: 60)
                            specialExample("Tag", SpinnahCornerRadius.tag, size: 40)
                            specialExample("Circle", SpinnahCornerRadius.circle, size: 60)
                        }
                    }
                }
                
                // Custom Corner Examples
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Custom Corner Examples")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    HStack(spacing: SpinnahSpacing.sm) {
                        customCornerExample("Top Only", .topOnly)
                        customCornerExample("Bottom Only", .bottomOnly)
                        customCornerExample("Leading Only", .leadingOnly)
                    }
                }
            }
            .spinnahPageMargins()
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Corner Radius Scale")
    }
    
    // Helper functions for previews
    private static func cornerDemo(_ name: String, _ value: CGFloat) -> some View {
        VStack(spacing: 4) {
            Rectangle()
                .fill(Color.spinnahPrimary)
                .frame(width: 60, height: 40)
                .cornerRadius(value == SpinnahCornerRadius.circle ? 30 : value)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
            
            Text("\(value == SpinnahCornerRadius.circle ? "∞" : String(Int(value)))pt")
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func buttonExample(_ label: String, _ radius: CGFloat) -> some View {
        Text(label)
            .font(SpinnahFonts.labelM)
            .foregroundStyle(.white)
            .padding(.horizontal, SpinnahSpacing.smPlus)
            .padding(.vertical, SpinnahSpacing.sm)
            .background(Color.spinnahPrimary)
            .cornerRadius(radius == SpinnahCornerRadius.circle ? 20 : radius)
    }
    
    private static func cardExample(_ label: String, _ radius: CGFloat) -> some View {
        VStack {
            Text(label)
                .font(SpinnahFonts.labelM)
                .foregroundStyle(Color.spinnahTextPrimary)
        }
        .frame(width: 80, height: 60)
        .background(Color.spinnahBackgroundSecondary)
        .cornerRadius(radius)
        .overlay(
            RoundedRectangle(cornerRadius: radius)
                .stroke(Color.spinnahBorder, lineWidth: 1)
        )
    }
    
    private static func specialExample(_ label: String, _ radius: CGFloat, size: CGFloat) -> some View {
        VStack(spacing: 4) {
            Rectangle()
                .fill(Color.spinnahSecondary)
                .frame(width: size, height: size * 0.7)
                .cornerRadius(radius == SpinnahCornerRadius.circle ? size/2 : radius)
            
            Text(label)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func customCornerExample(_ label: String, _ custom: SpinnahCornerRadius.Custom) -> some View {
        VStack(spacing: 4) {
            Rectangle()
                .fill(Color.spinnahGradientStart)
                .frame(width: 60, height: 40)
                .clipShape(
                    .rect(
                        topLeadingRadius: custom.topLeading,
                        bottomLeadingRadius: custom.bottomLeading,
                        bottomTrailingRadius: custom.bottomTrailing,
                        topTrailingRadius: custom.topTrailing
                    )
                )
            
            Text(label)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
}
#endif
