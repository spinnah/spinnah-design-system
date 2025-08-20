# SpinnahDesignSystem

The **SpinnahDesignSystem** is a shared SwiftUI-based design system used across all Spinnah apps. It provides consistent visual language, modular components, and UI tokens for building beautiful and cohesive user interfaces across macOS, iOS, and visionOS platforms.

---

## ✨ Features

- Centralized design tokens:
  - Colors (`SpinnahColors`)
  - Gradients (`SpinnahGradients`)
  - Typography (`SpinnahFonts`)
  - Spacing (`SpinnahSpacing`)
  - Corner Radii (`SpinnahCornerRadius`)
  - Icons (`SpinnahIcons`)

- Reusable UI components:
  - Buttons
  - Cards
  - Toolbars
  - Navigation Ornaments

- Modular and lightweight Swift Package
- Supports Xcode previews and multiplatform targets

---

## 🎨 Color Tokens

Below is a list of available named colors from `Colors.xcassets`:

| Color Name                   | Default Swatch                                                              | Dark Swatch                                                             |
|-----------------------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| `SpinnahAccent`            | ![SpinnahPrimary](READMEAssets/swatches/SpinnahAccent-Default.png)          | ![SpinnahPrimary](READMEAssets/swatches/SpinnahAccent-Dark.png)        |
| `SpinnahBackground`          | ![SpinnahPrimary](READMEAssets/swatches/SpinnahBackground-Default.png)      | ![SpinnahPrimary](READMEAssets/swatches/SpinnahBackground-Dark.png)    |
| `SpinnahBackgroundSecondary`  | ![SpinnahPrimary](READMEAssets/swatches/SpinnahBackgroundSecondary-Default.png) | ![SpinnahPrimary](READMEAssets/swatches/SpinnahBackgroundSecondary-Dark.png) |
| `SpinnahBorder`               | ![SpinnahPrimary](READMEAssets/swatches/SpinnahBorder-Default.png)          | ![SpinnahPrimary](READMEAssets/swatches/SpinnahBorder-Dark.png)        |
| `SpinnahCardElevated`         | ![SpinnahPrimary](READMEAssets/swatches/SpinnahCardElevated-Default.png)    | ![SpinnahPrimary](READMEAssets/swatches/SpinnahCardElevated-Dark.png)  |
| `SpinnahError`                | ![SpinnahPrimary](READMEAssets/swatches/SpinnahError-Default.png)           | ![SpinnahPrimary](READMEAssets/swatches/SpinnahError-Dark.png)         |
| `SpinnahInfo`                 | ![SpinnahPrimary](READMEAssets/swatches/SpinnahInfo-Default.png)            | ![SpinnahPrimary](READMEAssets/swatches/SpinnahInfo-Dark.png)          |
| `SpinnahLink`                 | ![SpinnahPrimary](READMEAssets/swatches/SpinnahLink-Default.png)            | ![SpinnahPrimary](READMEAssets/swatches/SpinnahLink-Dark.png)          |
| `SpinnahOverlay`              | ![SpinnahPrimary](READMEAssets/swatches/SpinnahOverlay-Default.png)         | ![SpinnahPrimary](READMEAssets/swatches/SpinnahOverlay-Dark.png)       |
| `SpinnahPrimary`              | ![SpinnahPrimary](READMEAssets/swatches/SpinnahPrimary-Default.png)         | ![SpinnahPrimary](READMEAssets/swatches/SpinnahPrimary-Dark.png)       |
| `SpinnahSecondary`            | ![SpinnahPrimary](READMEAssets/swatches/SpinnahSecondary-Default.png)       | ![SpinnahPrimary](READMEAssets/swatches/SpinnahSecondary-Dark.png)     |
| `SpinnahSuccess`              | ![SpinnahPrimary](READMEAssets/swatches/SpinnahSuccess-Default.png)         | ![SpinnahPrimary](READMEAssets/swatches/SpinnahSuccess-Dark.png)       |
| `SpinnahTextDisabled`         | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextDisabled-Default.png)    | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextDisabled-Dark.png)  |
| `SpinnahTextPlaceholder`      | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextPlaceholder-Default.png) | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextPlaceholder-Dark.png) |
| `SpinnahTextPrimary`          | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextPrimary-Default.png)     | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextPrimary-Dark.png)   |
| `SpinnahTextSecondary`        | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextSecondary-Default.png)   | ![SpinnahPrimary](READMEAssets/swatches/SpinnahTextSecondary-Dark.png) |
| `SpinnahWarning`              | ![SpinnahPrimary](READMEAssets/swatches/SpinnahWarning-Default.png)         | ![SpinnahPrimary](READMEAssets/swatches/SpinnahWarning-Dark.png)       |

_Note: These color values are approximations based on current theme previews._

---

## 🌈 Gradient Tokens

The following named gradients are provided by `SpinnahGradients`:

| Gradient Name       | From → To                                      | Default Swatch                                                              | Dark Swatch                                                             |
|---------------------|------------------------------------------------|------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| `primaryGradient`   | SpinnahGradientStart → SpinnahGradientEnd      | ![primaryGradient](READMEAssets/swatches/primaryGradient-Default.png)       | ![primaryGradient](READMEAssets/swatches/primaryGradient-Dark.png)      |
| `cardBackground`    | SpinnahBackground → SpinnahBackgroundSecondary | ![cardBackground](READMEAssets/swatches/cardBackground-Default.png)         | ![cardBackground](READMEAssets/swatches/cardBackground-Dark.png)        |

---

## 📝 Typography Tokens

The typography system uses Apple's System Fonts (San Francisco) with carefully selected sizes and weights:

### Font Hierarchy

| Token Name | Size | Weight | Use Case |
|------------|------|--------|----------|
| `displayXL` | 48pt | Bold | Hero headlines, splash screens |
| `displayL` | 36pt | Bold | Main page headlines, section heroes |
| `displayM` | 28pt | Bold | Card headlines, modal titles |
| `headingL` | 24pt | Semibold | Section headers, navigation titles |
| `headingM` | 20pt | Semibold | Card titles, list section headers |
| `headingS` | 18pt | Semibold | Subsection headers, form labels |
| `bodyL` | 17pt | Regular | Primary content, article text |
| `bodyM` | 15pt | Regular | Secondary content, descriptions |
| `bodyS` | 13pt | Regular | Captions, metadata, fine print |
| `labelL` | 16pt | Medium | Button labels, prominent labels |
| `labelM` | 14pt | Medium | Form labels, toolbar buttons |
| `labelS` | 12pt | Medium | Tags, small buttons, status indicators |
| `captionL` | 12pt | Regular | Image captions, footnotes |
| `captionS` | 10pt | Regular | Copyright text, very small details |

### Semantic Aliases

```swift
// Common use cases
SpinnahFonts.navigationTitle  // → headingL
SpinnahFonts.buttonPrimary    // → labelL  
SpinnahFonts.cardBody         // → bodyM
SpinnahFonts.listPrimary      // → bodyL
```

### Convenience Modifiers

```swift
Text("Hello World")
    .spinnahPrimaryText()     // Applies bodyL + primary color
    .spinnahHeading()         // Applies headingL + primary color
    .spinnahDisplay()         // Applies displayL + gradient
```

---

## 📏 Spacing Tokens

Comprehensive spacing scale for consistent layout:

### Spacing Scale

| Token | Value | Use Case |
|-------|-------|----------|
| `xxs` | 2pt | Icon-to-text gaps, very tight spacing |
| `xs` | 4pt | Button icon gaps, form field internal padding |
| `xsPlus` | 6pt | List item internal spacing, small component gaps |
| `sm` | 8pt | Component internal padding, small gaps |
| `smPlus` | 12pt | Card internal padding, button padding |
| `md` | 16pt | Default component spacing, standard gaps |
| `mdPlus` | 20pt | Section spacing within cards, toolbar padding |
| `lg` | 24pt | Section gaps, card-to-card spacing |
| `xl` | 32pt | Major section breaks, page content padding |
| `xlPlus` | 40pt | Large section gaps, modal content spacing |
| `xxl` | 48pt | Page-level vertical spacing, hero sections |
| `xxxl` | 64pt | Major page sections, landing page spacing |
| `massive` | 80pt | Hero sections, splash screen spacing |
| `ultra` | 120pt | Full-page vertical centers, dramatic spacing |

### Semantic Aliases

```swift
// Component spacing
SpinnahSpacing.buttonPadding     // → sm (8pt)
SpinnahSpacing.cardPadding       // → md (16pt)
SpinnahSpacing.pageMargin        // → md (16pt)
SpinnahSpacing.sectionGap        // → lg (24pt)

// Grid spacing
SpinnahSpacing.gridSpacing       // → md (16pt)
SpinnahSpacing.listItemGap       // → xs (4pt)
```

### View Extensions

```swift
VStack {
    // Content
}
.spinnahPageMargins()        // Applies horizontal page margins
.spinnahCardPadding()        // Applies card-style padding
.spinnahSectionSpacing()     // Applies section-level spacing
```

---

## 🔄 Corner Radius Tokens

Complete corner radius system for consistent rounding:

### Corner Radius Scale

| Token | Value | Use Case |
|-------|-------|----------|
| `none` | 0pt | Sharp rectangular elements, dividers |
| `xs` | 2pt | Input fields, small tags, tight UI |
| `sm` | 4pt | Buttons, form elements, small cards |
| `smPlus` | 6pt | Toolbar buttons, compact components |
| `md` | 8pt | Standard cards, panels, modals |
| `mdPlus` | 10pt | Elevated cards, prominent panels |
| `lg` | 12pt | Large cards, main content containers |
| `lgPlus` | 16pt | Hero cards, feature containers |
| `xl` | 20pt | Pill-shaped buttons, prominent elements |
| `xlPlus` | 24pt | Large pill buttons, rounded containers |
| `xxl` | 28pt | Very rounded containers, soft UI |
| `xxxl` | 32pt | Highly rounded design elements |
| `pill` | 50pt | Pill-shaped buttons, tags, navigation |
| `circle` | 999pt | Perfect circles, profile images |

### Semantic Aliases

```swift
// Component types
SpinnahCornerRadius.button           // → sm (4pt)
SpinnahCornerRadius.card             // → md (8pt)
SpinnahCornerRadius.modal            // → lgPlus (16pt)
SpinnahCornerRadius.avatar           // → lg (12pt)
SpinnahCornerRadius.buttonPill       // → pill (50pt)
```

### View Extensions

```swift
Rectangle()
    .spinnahCardCorners()        // Applies card corner radius
    .spinnahButtonCorners()      // Applies button corner radius
    .spinnahCircle()             // Applies circular clipping
```

---

## 🧩 Complete Usage Example

```swift
import SpinnahDesignSystem

struct ContentView: View {
    var body: some View {
        VStack(spacing: SpinnahSpacing.sectionGap) {
            // Hero Section
            Text("Welcome to Spinnah")
                .font(SpinnahFonts.displayL)
                .foregroundStyle(
                    LinearGradient.spinnahPrimary
                )
                .padding(.vertical, SpinnahSpacing.xlPlus)
            
            // Content Card
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Getting Started")
                    .font(SpinnahFonts.headingM)
                    .foregroundStyle(Color.spinnahTextPrimary)
                
                Text("This design system provides everything you need.")
                    .font(SpinnahFonts.bodyM)
                    .foregroundStyle(Color.spinnahTextSecondary)
                
                SpinnahButton.primary("Continue") {
                    print("Button tapped!")
                }
            }
            .padding(SpinnahSpacing.cardPadding)
            .background(Color.spinnahCardElevated)
            .cornerRadius(SpinnahCornerRadius.card)
            .shadow(color: .black.opacity(0.1), radius: 8, y: 4)
            
            Spacer()
        }
        .spinnahPageMargins()
        .background(Color.spinnahBackgroundPrimary)
    }
}
```

---

## 🎯 Component Examples

### Typography in Action
```swift
VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
    Text("Article Title")
        .spinnahHeading()
    
    Text("Subtitle or description")
        .spinnahSecondaryText()
    
    Text("Body content with proper reading size and color.")
        .spinnahPrimaryText()
    
    Text("Caption or metadata")
        .spinnahCaption()
}
```

### Spacing in Layouts
```swift
VStack(spacing: SpinnahSpacing.sectionGap) {
    // Major sections
    
    HStack(spacing: SpinnahSpacing.componentGap) {
        // Related components
    }
    
    // Cards with proper spacing
    LazyVGrid(
        columns: Array(repeating: GridItem(.flexible()), count: 2),
        spacing: SpinnahSpacing.gridSpacing
    ) {
        // Grid items
    }
}
.spinnahPageMargins()
```

### Corner Radius Combinations
```swift
// Button with proper corner radius
Text("Save")
    .padding(SpinnahSpacing.buttonEdgeInsets)
    .background(Color.spinnahPrimary)
    .foregroundStyle(.white)
    .cornerRadius(SpinnahCornerRadius.button)

// Card with elevated styling
CardContent()
    .padding(SpinnahSpacing.cardPadding)
    .background(Color.spinnahCardElevated)
    .cornerRadius(SpinnahCornerRadius.cardElevated)
    .shadow(color: .black.opacity(0.1), radius: 8, y: 4)
```

---

## 📦 Integration

You can integrate this package into other apps using Swift Package Manager:

1. Open your project in Xcode.
2. Select **File > Add Packages...**
3. Enter the GitHub URL: `https://github.com/spinnah/spinnah-design-system`
4. Choose the latest version or main branch.

---

## 📁 Folder Structure

```
Sources/
  ├── Components/
  │   ├── SpinnahButtons.swift
  │   ├── SpinnahCards.swift
  │   ├── SpinnahToolbars.swift
  │   └── SpinnahNavigationOrnaments.swift
  ├── Tokens/
  │   ├── Colors.swift
  │   ├── Gradients.swift
  │   ├── Fonts.swift
  │   ├── Spacing.swift
  │   ├── CornerRadius.swift
  │   └── Icons.swift
  ├── Resources/
  │   └── Colors.xcassets/
  └── SpinnahDesignSystem.swift
```

---

## 🚀 Key Benefits

- **Consistency**: All tokens ensure visual harmony across platforms
- **Accessibility**: Typography supports Dynamic Type, spacing follows Apple HIG
- **Developer Experience**: Semantic names and convenience methods
- **Cross-Platform**: Designed for iOS, macOS, and visionOS
- **Future-Proof**: Easy to extend and modify as design evolves
- **CSS/Web Ready**: Exact pixel values translate perfectly to other platforms

---

© 2025 Shast LeLow. All rights reserved.
