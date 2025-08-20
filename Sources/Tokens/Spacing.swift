//===========================================================================
//  Spacing.swift (file version 2)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Defines the complete spacing scale for consistent layout across all
//  Spinnah apps. Includes granular options for tight layouts and large
//  values for page-level spacing.
//===========================================================================


import SwiftUI

// MARK: - Core Spacing Scale
public enum SpinnahSpacing {
    
    // MARK: - Micro Spacing (Tight layouts)
    
    /// Extra tiny spacing - 2pt
    /// Use for: Icon-to-text gaps, very tight component spacing
    public static let xxs: CGFloat = 2
    
    /// Tiny spacing - 4pt
    /// Use for: Button icon gaps, form field internal padding
    public static let xs: CGFloat = 4
    
    /// Extra small spacing - 6pt
    /// Use for: List item internal spacing, small component gaps
    public static let xsPlus: CGFloat = 6
    
    // MARK: - Standard Spacing (Most common)
    
    /// Small spacing - 8pt
    /// Use for: Component internal padding, small gaps between related elements
    public static let sm: CGFloat = 8
    
    /// Small-medium spacing - 12pt
    /// Use for: Card internal padding, button padding
    public static let smPlus: CGFloat = 12
    
    /// Medium spacing - 16pt
    /// Use for: Default component spacing, standard gaps between UI elements
    public static let md: CGFloat = 16
    
    /// Medium-large spacing - 20pt
    /// Use for: Section spacing within cards, toolbar padding
    public static let mdPlus: CGFloat = 20
    
    /// Large spacing - 24pt
    /// Use for: Section gaps, card-to-card spacing
    public static let lg: CGFloat = 24
    
    // MARK: - Layout Spacing (Page structure)
    
    /// Extra large spacing - 32pt
    /// Use for: Major section breaks, page content padding
    public static let xl: CGFloat = 32
    
    /// Extra large plus - 40pt
    /// Use for: Large section gaps, modal content spacing
    public static let xlPlus: CGFloat = 40
    
    /// Double extra large - 48pt
    /// Use for: Page-level vertical spacing, hero section padding
    public static let xxl: CGFloat = 48
    
    /// Triple extra large - 64pt
    /// Use for: Major page sections, landing page spacing
    public static let xxxl: CGFloat = 64
    
    /// Massive spacing - 80pt
    /// Use for: Hero sections, splash screen spacing
    public static let massive: CGFloat = 80
    
    /// Ultra spacing - 120pt
    /// Use for: Full-page vertical centers, dramatic spacing
    public static let ultra: CGFloat = 120
}

// MARK: - Semantic Spacing Aliases
public extension SpinnahSpacing {
    
    // MARK: - Component Internal Spacing
    
    /// Standard button internal padding
    static let buttonPadding = sm
    
    /// Large button internal padding
    static let buttonPaddingLarge = smPlus
    
    /// Card internal content padding
    static let cardPadding = md
    
    /// Card internal content padding for compact cards
    static let cardPaddingCompact = sm
    
    /// Form field internal padding
    static let inputPadding = smPlus
    
    /// Toolbar button spacing
    static let toolbarSpacing = xs
    
    /// Icon-to-text spacing in buttons and labels
    static let iconTextGap = xs
    
    // MARK: - Layout Spacing
    
    /// Default gap between related UI components
    static let componentGap = md
    
    /// Gap between unrelated UI sections
    static let sectionGap = lg
    
    /// Page edge margins (left/right)
    static let pageMargin = md
    
    /// Page edge margins for large screens
    static let pageMarginLarge = xl
    
    /// Vertical spacing between major page sections
    static let pageSection = xlPlus
    
    /// Navigation bar content spacing
    static let navigationSpacing = sm
    
    /// List item spacing (between items)
    static let listItemGap = xs
    
    /// List section spacing (between sections)
    static let listSectionGap = lg
    
    // MARK: - Grid and Collection Spacing
    
    /// Default grid item spacing
    static let gridSpacing = md
    
    /// Compact grid item spacing
    static let gridSpacingCompact = sm
    
    /// Large grid item spacing
    static let gridSpacingLarge = lg
    
    /// Collection view section spacing
    static let collectionSectionSpacing = xl
}

// MARK: - Spacing Convenience Methods
public extension SpinnahSpacing {
    
    /// Returns spacing value multiplied by a factor
    /// - Parameters:
    ///   - base: Base spacing value
    ///   - multiplier: Multiplication factor
    /// - Returns: Calculated spacing
    static func scaled(_ base: CGFloat, by multiplier: Double) -> CGFloat {
        return base * multiplier
    }
    
    /// Returns the next larger spacing value in the scale
    /// - Parameter current: Current spacing value
    /// - Returns: Next larger value, or same if at maximum
    static func larger(than current: CGFloat) -> CGFloat {
        switch current {
        case xxs: return xs
        case xs: return xsPlus
        case xsPlus: return sm
        case sm: return smPlus
        case smPlus: return md
        case md: return mdPlus
        case mdPlus: return lg
        case lg: return xl
        case xl: return xlPlus
        case xlPlus: return xxl
        case xxl: return xxxl
        case xxxl: return massive
        case massive: return ultra
        default: return current
        }
    }
    
    /// Returns the next smaller spacing value in the scale
    /// - Parameter current: Current spacing value
    /// - Returns: Next smaller value, or same if at minimum
    static func smaller(than current: CGFloat) -> CGFloat {
        switch current {
        case ultra: return massive
        case massive: return xxxl
        case xxxl: return xxl
        case xxl: return xlPlus
        case xlPlus: return xl
        case xl: return lg
        case lg: return mdPlus
        case mdPlus: return md
        case md: return smPlus
        case smPlus: return sm
        case sm: return xsPlus
        case xsPlus: return xs
        case xs: return xxs
        default: return current
        }
    }
}

// MARK: - SwiftUI View Extensions
public extension View {
    
    /// Applies standard Spinnah page margins
    func spinnahPageMargins() -> some View {
        self.padding(.horizontal, SpinnahSpacing.pageMargin)
    }
    
    /// Applies large screen page margins
    func spinnahPageMarginsLarge() -> some View {
        self.padding(.horizontal, SpinnahSpacing.pageMarginLarge)
    }
    
    /// Applies standard component spacing on all sides
    func spinnahComponentPadding() -> some View {
        self.padding(SpinnahSpacing.componentGap)
    }
    
    /// Applies card-style internal padding
    func spinnahCardPadding() -> some View {
        self.padding(SpinnahSpacing.cardPadding)
    }
    
    /// Applies section-level vertical spacing
    func spinnahSectionSpacing() -> some View {
        self.padding(.vertical, SpinnahSpacing.sectionGap)
    }
}

// MARK: - Edge Insets Convenience
public extension SpinnahSpacing {
    
    /// Standard button edge insets
    static let buttonEdgeInsets = EdgeInsets(
        top: buttonPadding,
        leading: smPlus,
        bottom: buttonPadding,
        trailing: smPlus
    )
    
    /// Large button edge insets
    static let buttonEdgeInsetsLarge = EdgeInsets(
        top: buttonPaddingLarge,
        leading: md,
        bottom: buttonPaddingLarge,
        trailing: md
    )
    
    /// Card content edge insets
    static let cardEdgeInsets = EdgeInsets(
        top: cardPadding,
        leading: cardPadding,
        bottom: cardPadding,
        trailing: cardPadding
    )
    
    /// Page content edge insets
    static let pageEdgeInsets = EdgeInsets(
        top: pageSection,
        leading: pageMargin,
        bottom: pageSection,
        trailing: pageMargin
    )
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahSpacing_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            VStack(spacing: SpinnahSpacing.lg) {
                
                // Micro Spacing Demo
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Micro Spacing (2pt - 6pt)")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    VStack(spacing: 0) {
                        spacingDemo("xxs", SpinnahSpacing.xxs)
                        spacingDemo("xs", SpinnahSpacing.xs)
                        spacingDemo("xsPlus", SpinnahSpacing.xsPlus)
                    }
                }
                
                // Standard Spacing Demo
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Standard Spacing (8pt - 24pt)")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    VStack(spacing: 0) {
                        spacingDemo("sm", SpinnahSpacing.sm)
                        spacingDemo("smPlus", SpinnahSpacing.smPlus)
                        spacingDemo("md", SpinnahSpacing.md)
                        spacingDemo("mdPlus", SpinnahSpacing.mdPlus)
                        spacingDemo("lg", SpinnahSpacing.lg)
                    }
                }
                
                // Layout Spacing Demo
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Layout Spacing (32pt - 120pt)")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    VStack(spacing: 0) {
                        spacingDemo("xl", SpinnahSpacing.xl)
                        spacingDemo("xlPlus", SpinnahSpacing.xlPlus)
                        spacingDemo("xxl", SpinnahSpacing.xxl)
                        spacingDemo("xxxl", SpinnahSpacing.xxxl)
                        spacingDemo("massive", SpinnahSpacing.massive)
                        spacingDemo("ultra", SpinnahSpacing.ultra)
                    }
                }
                
                // Semantic Usage Examples
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Semantic Usage Examples")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    // Button Padding Example
                    HStack {
                        Text("Button:")
                            .font(SpinnahFonts.labelM)
                        Rectangle()
                            .fill(Color.spinnahPrimary)
                            .frame(width: 80, height: 32)
                            .overlay(
                                Text("Save")
                                    .font(SpinnahFonts.labelM)
                                    .foregroundStyle(.white)
                            )
                            .padding(SpinnahSpacing.buttonEdgeInsets)
                            .background(Color.spinnahBackgroundSecondary)
                        Spacer()
                    }
                    
                    // Card Padding Example
                    VStack(alignment: .leading) {
                        Text("Card Content:")
                            .font(SpinnahFonts.labelM)
                        
                        VStack(alignment: .leading, spacing: SpinnahSpacing.xs) {
                            Text("Card Title")
                                .font(SpinnahFonts.headingS)
                            Text("This shows card internal padding using SpinnahSpacing.cardPadding")
                                .font(SpinnahFonts.bodyS)
                        }
                        .spinnahCardPadding()
                        .background(Color.spinnahBackgroundSecondary)
                        .cornerRadius(SpinnahCornerRadius.md)
                    }
                }
            }
            .spinnahPageMargins()
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Spacing Scale")
    }
    
    // Helper function for spacing visualization
    private static func spacingDemo(_ name: String, _ value: CGFloat) -> some View {
        HStack {
            Text("\(name):")
                .font(SpinnahFonts.labelS)
                .frame(width: 60, alignment: .leading)
            
            Text("\(Int(value))pt")
                .font(SpinnahFonts.labelS)
                .foregroundStyle(Color.spinnahTextSecondary)
                .frame(width: 40, alignment: .leading)
            
            Rectangle()
                .fill(Color.spinnahPrimary)
                .frame(width: value, height: 4)
            
            Spacer()
        }
        .padding(.vertical, 2)
    }
}
#endif
