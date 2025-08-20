# Spinnah-Design-System

Shared design system with components, colors, and UI patterns for all Spinnah apps. 

# SpinnahDesignSystem

The **SpinnahDesignSystem** is a shared SwiftUI-based design system used across all Spinnah apps. It provides consistent visual language, modular components, and UI tokens for building beautiful and cohesive user interfaces across macOS, iOS, and visionOS platforms.

---

## ✨ Features

- Centralized design tokens:
  - Colors (`SpinnahColors`)
  - Gradients (`SpinnahGradients`)
  - Typography (Fonts)
  - Corner Radii
  - Spacing
  - Icons

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
| `SpinnahWarning`              | ![SpinnahPrimary](READMEAssets/swatches/SpinnahWarning-Default.png)         | ![SpinnahPrimary](READMEAssets/swatches/SpinnahWarning-Dark.png)       |ca
_Note: These color values are approximations based on current theme previews._

---

## 🌈 Gradient Tokens

The following named gradients are provided by `SpinnahGradients`:

| Gradient Name       | From → To                                      | Swatch |
|---------------------|------------------------------------------------|--------|
| `primaryGradient`   | SpinnahGradientStart → SpinnahGradientEnd      | ![primaryGradient](READMEAssets/swatches/primaryGradient-Default.png) |
| `primaryGradient-Dark`   |       | ![primaryGradient](READMEAssets/swatches/primaryGradient-Dark.png) |
| `cardBackground`    | SpinnahBackground → SpinnahBackgroundSecondary | ![cardBackground](READMEAssets/swatches/cardBackground.png) |
| `toolbarFade`       | SpinnahOverlay → transparent                   | ![toolbarFade](READMEAssets/swatches/toolbarFade.png) |

---

## 🧩 Usage Example

```swift
Text("Hello, Spinnah!")
    .font(.custom(SpinnahFonts.body, size: 16))
    .foregroundColor(SpinnahColors.textPrimary)
    .padding(SpinnahSpacing.medium)
    .background(SpinnahColors.background)
    .cornerRadius(SpinnahCornerRadius.medium)
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
  ├── Tokens/
  ├── Resources/
  └── SpinnahDesignSystem.swift
```

---

© 2025 Shast LeLow. All rights reserved.
