//===========================================================================
//  Fonts.swift (file version 1)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Defines the typography system using Apple's recommended system fonts
//  and text styles. Follows Human Interface Guidelines for optimal
//  readability and accessibility across all Apple platforms.
//===========================================================================

import SwiftUI

// MARK: - Typography Scale
public enum SpinnahFonts {
    
    // MARK: - Display Fonts (Largest sizes for hero content)
    
    /// Extra large display text - 48pt, bold
    /// Use for: Hero headlines, splash screens
    public static let displayXL = Font.system(size: 48, weight: .bold, design: .rounded)
    
    /// Large display text - 36pt, bold  
    /// Use for: Main page headlines, section heroes
    public static let displayL = Font.system(size: 36, weight: .bold, design: .rounded)
    
    /// Medium display text - 28pt, bold
    /// Use for: Card headlines, modal titles
    public static let displayM = Font.system(size: 28, weight: .bold, design: .rounded)
    
    // MARK: - Heading Fonts
    
    /// Large heading - 24pt, semibold
    /// Use for: Section headers, navigation titles
    public static let headingL = Font.system(size: 24, weight: .semibold, design: .rounded)
    
    /// Medium heading - 20pt, semibold
    /// Use for: Card titles, list section headers
    public static let headingM = Font.system(size: 20, weight: .semibold, design: .rounded)
    
    /// Small heading - 18pt, semibold
    /// Use for: Subsection headers, form labels
    public static let headingS = Font.system(size: 18, weight: .semibold, design: .rounded)
    
    // MARK: - Body Text
    
    /// Large body text - 17pt, regular
    /// Use for: Primary content, article text
    public static let bodyL = Font.system(size: 17, weight: .regular, design: .default)
    
    /// Medium body text - 15pt, regular  
    /// Use for: Secondary content, descriptions
    public static let bodyM = Font.system(size: 15, weight: .regular, design: .default)
    
    /// Small body text - 13pt, regular
    /// Use for: Captions, metadata, fine print
    public static let bodyS = Font.system(size: 13, weight: .regular, design: .default)
    
    // MARK: - Label Text
    
    /// Large label - 16pt, medium
    /// Use for: Button labels, prominent labels
    public static let labelL = Font.system(size: 16, weight: .medium, design: .rounded)
    
    /// Medium label - 14pt, medium
    /// Use for: Form labels, toolbar buttons
    public static let labelM = Font.system(size: 14, weight: .medium, design: .rounded)
    
    /// Small label - 12pt, medium
    /// Use for: Tags, small buttons, status indicators
    public static let labelS = Font.system(size: 12, weight: .medium, design: .rounded)
    
    // MARK: - Caption Text
    
    /// Large caption - 12pt, regular
    /// Use for: Image captions, footnotes
    public static let captionL = Font.system(size: 12, weight: .regular, design: .default)
    
    /// Small caption - 10pt, regular
    /// Use for: Copyright text, very small details
    public static let captionS = Font.system(size: 10, weight: .regular, design: .default)
}

// MARK: - Semantic Font Extensions
public extension SpinnahFonts {
    
    // MARK: - Common Use Cases
    
    /// Navigation bar titles and main page headers
    static let navigationTitle = headingL
    
    /// Primary button text
    static let buttonPrimary = labelL
    
    /// Secondary/small button text  
    static let buttonSecondary = labelM
    
    /// Form input labels
    static let inputLabel = labelM
    
    /// Placeholder text in inputs
    static let inputPlaceholder = bodyM
    
    /// Tab bar labels
    static let tabLabel = labelS
    
    /// Toolbar button labels
    static let toolbarLabel = labelM
    
    /// Card content text
    static let cardBody = bodyM
    
    /// List item primary text
    static let listPrimary = bodyL
    
    /// List item secondary text
    static let listSecondary = bodyS
    
    /// Alert titles
    static let alertTitle = headingM
    
    /// Alert messages
    static let alertMessage = bodyM
}

// MARK: - Font Weight Variants
public extension SpinnahFonts {
    
    /// Creates a bold variant of any font size
    /// - Parameter baseFont: The base font to make bold
    /// - Returns: Bold version of the font
    static func bold(_ baseFont: Font) -> Font {
        // Note: This is a simplified approach
        // In practice, you'd need to extract size and apply bold weight
        return baseFont.bold()
    }
    
    /// Creates an italic variant of any font
    /// - Parameter baseFont: The base font to make italic  
    /// - Returns: Italic version of the font
    static func italic(_ baseFont: Font) -> Font {
        return baseFont.italic()
    }
}

// MARK: - Dynamic Type Support
public extension SpinnahFonts {
    
    /// Font that automatically scales with user's preferred text size
    /// Maps to iOS/macOS text styles for maximum accessibility
    enum DynamicText {
        
        /// Maps to .largeTitle text style
        public static let largeTitle = Font.largeTitle
        
        /// Maps to .title text style  
        public static let title = Font.title
        
        /// Maps to .title2 text style
        public static let title2 = Font.title2
        
        /// Maps to .title3 text style
        public static let title3 = Font.title3
        
        /// Maps to .headline text style
        public static let headline = Font.headline
        
        /// Maps to .body text style (most common)
        public static let body = Font.body
        
        /// Maps to .callout text style
        public static let callout = Font.callout
        
        /// Maps to .subheadline text style
        public static let subheadline = Font.subheadline
        
        /// Maps to .footnote text style
        public static let footnote = Font.footnote
        
        /// Maps to .caption text style
        public static let caption = Font.caption
        
        /// Maps to .caption2 text style
        public static let caption2 = Font.caption2
    }
}

// MARK: - Typography Helper Modifiers
public extension Text {
    
    /// Applies Spinnah primary text styling with color
    func spinnahPrimaryText() -> some View {
        self.font(SpinnahFonts.bodyL)
            .foregroundStyle(Color.spinnahTextPrimary)
    }
    
    /// Applies Spinnah secondary text styling with color
    func spinnahSecondaryText() -> some View {
        self.font(SpinnahFonts.bodyM)
            .foregroundStyle(Color.spinnahTextSecondary)
    }
    
    /// Applies Spinnah heading styling with color
    func spinnahHeading() -> some View {
        self.font(SpinnahFonts.headingL)
            .foregroundStyle(Color.spinnahTextPrimary)
    }
    
    /// Applies Spinnah caption styling with color
    func spinnahCaption() -> some View {
        self.font(SpinnahFonts.captionL)
            .foregroundStyle(Color.spinnahTextSecondary)
    }
    
    /// Applies Spinnah display text with gradient
    func spinnahDisplay() -> some View {
        self.font(SpinnahFonts.displayL)
            .foregroundStyle(
                LinearGradient(
                    colors: [Color.spinnahGradientStart, Color.spinnahGradientEnd],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
    }
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahFonts_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                // Display Fonts
                VStack(alignment: .leading, spacing: 12) {
                    Text("Display Fonts")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Text("Display XL - Hero Headlines")
                        .font(SpinnahFonts.displayXL)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Display L - Main Headlines")
                        .font(SpinnahFonts.displayL)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Display M - Card Headlines")
                        .font(SpinnahFonts.displayM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                }
                
                Divider()
                
                // Heading Fonts
                VStack(alignment: .leading, spacing: 12) {
                    Text("Heading Fonts")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Text("Heading L - Section Headers")
                        .font(SpinnahFonts.headingL)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Heading M - Card Titles")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Heading S - Subsection Headers")
                        .font(SpinnahFonts.headingS)
                        .foregroundStyle(Color.spinnahTextPrimary)
                }
                
                Divider()
                
                // Body Text
                VStack(alignment: .leading, spacing: 12) {
                    Text("Body Text")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Text("Body L - Primary content and article text. This is the main reading size for most content in your app.")
                        .font(SpinnahFonts.bodyL)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Body M - Secondary content and descriptions. Slightly smaller but still very readable.")
                        .font(SpinnahFonts.bodyM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Body S - Captions, metadata, and fine print. Use sparingly for less important information.")
                        .font(SpinnahFonts.bodyS)
                        .foregroundStyle(Color.spinnahTextPrimary)
                }
                
                Divider()
                
                // Label Text
                VStack(alignment: .leading, spacing: 12) {
                    Text("Label Text")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Text("Label L - Button labels, prominent labels")
                        .font(SpinnahFonts.labelL)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Label M - Form labels, toolbar buttons")
                        .font(SpinnahFonts.labelM)
                        .foregroundStyle(Color.spinnahTextPrimary)
                    
                    Text("Label S - Tags, small buttons")
                        .font(SpinnahFonts.labelS)
                        .foregroundStyle(Color.spinnahTextPrimary)
                }
                
                Divider()
                
                // Convenience Modifiers
                VStack(alignment: .leading, spacing: 12) {
                    Text("Convenience Modifiers")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Text("Primary Text Style")
                        .spinnahPrimaryText()
                    
                    Text("Secondary Text Style")
                        .spinnahSecondaryText()
                    
                    Text("Heading Style")
                        .spinnahHeading()
                    
                    Text("Caption Style")
                        .spinnahCaption()
                    
                    Text("Display with Gradient")
                        .spinnahDisplay()
                }
            }
            .padding(20)
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Typography Scale")
    }
}
#endif
