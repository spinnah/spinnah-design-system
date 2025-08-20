//
//  Animation.swift (file version 1)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Defines the complete animation and motion system for consistent
//  timing, curves, and feel across all Spinnah apps. Based on Apple's
//  Human Interface Guidelines and modern motion design principles.
//

import SwiftUI

// MARK: - Animation Duration Scale
public enum SpinnahDuration {
    
    // MARK: - Micro Interactions (Instant feedback)
    
    /// Instant transition - 0.1s
    /// Use for: Immediate feedback, state changes
    public static let instant: Double = 0.1
    
    /// Extra fast transition - 0.15s
    /// Use for: Micro-interactions, hover states
    public static let xfast: Double = 0.15
    
    /// Fast transition - 0.2s
    /// Use for: Button presses, small element changes
    public static let fast: Double = 0.2
    
    // MARK: - Standard Interactions (Most common)
    
    /// Quick transition - 0.25s
    /// Use for: Sheet presentations, small movements
    public static let quick: Double = 0.25
    
    /// Standard transition - 0.3s
    /// Use for: Most UI animations, card flips
    public static let standard: Double = 0.3
    
    /// Medium transition - 0.4s
    /// Use for: Modal presentations, larger movements
    public static let medium: Double = 0.4
    
    // MARK: - Prominent Interactions (Page-level)
    
    /// Slow transition - 0.5s
    /// Use for: Page transitions, complex animations
    public static let slow: Double = 0.5
    
    /// Extra slow transition - 0.6s
    /// Use for: Dramatic reveals, hero animations
    public static let xslow: Double = 0.6
    
    /// Dramatic transition - 0.8s
    /// Use for: Splash screens, major state changes
    public static let dramatic: Double = 0.8
    
    /// Epic transition - 1.0s
    /// Use for: Cinematic effects, loading sequences
    public static let epic: Double = 1.0
}

// MARK: - Animation Curves
public enum SpinnahCurves {
    
    // MARK: - Standard Easing Functions
    
    /// Linear animation (no easing)
    /// Use for: Continuous progress, loading bars
    public static let linear = Animation.linear
    
    /// Ease in (slow start)
    /// Use for: Elements entering from rest
    public static let easeIn = Animation.easeIn
    
    /// Ease out (slow end)
    /// Use for: Elements coming to rest
    public static let easeOut = Animation.easeOut
    
    /// Ease in-out (slow start and end)
    /// Use for: Most UI transitions, smooth movement
    public static let easeInOut = Animation.easeInOut
    
    // MARK: - Spring Animations (Apple's preferred)
    
    /// Gentle spring - smooth, subtle bounce
    /// Use for: Subtle state changes, gentle emphasis
    public static let springGentle = Animation.spring(
        response: 0.5,
        dampingFraction: 0.9,
        blendDuration: 0
    )
    
    /// Standard spring - balanced bounce
    /// Use for: Most interactive elements, buttons
    public static let springStandard = Animation.spring(
        response: 0.4,
        dampingFraction: 0.8,
        blendDuration: 0
    )
    
    /// Bouncy spring - more playful bounce
    /// Use for: Playful interactions, success states
    public static let springBouncy = Animation.spring(
        response: 0.3,
        dampingFraction: 0.6,
        blendDuration: 0
    )
    
    /// Snappy spring - quick, tight response
    /// Use for: Immediate feedback, micro-interactions
    public static let springSnappy = Animation.spring(
        response: 0.2,
        dampingFraction: 0.9,
        blendDuration: 0
    )
    
    /// Smooth spring - very gentle, no overshoot
    /// Use for: Subtle movements, professional feel
    public static let springSmooth = Animation.spring(
        response: 0.6,
        dampingFraction: 1.0,
        blendDuration: 0
    )
    
    // MARK: - Specialized Curves
    
    /// Anticipation curve - slight reverse then forward
    /// Use for: Dramatic reveals, attention-grabbing
    public static let anticipation = Animation.spring(
        response: 0.7,
        dampingFraction: 0.5,
        blendDuration: 0
    )
    
    /// Overshoot curve - goes past target then settles
    /// Use for: Success confirmations, completed actions
    public static let overshoot = Animation.spring(
        response: 0.4,
        dampingFraction: 0.7,
        blendDuration: 0
    )
}

// MARK: - Complete Animation Configurations
public struct SpinnahAnimation {
    let animation: Animation
    let duration: Double
    
    public init(curve: Animation, duration: Double) {
        self.animation = curve
        self.duration = duration
    }
    
    public init(spring: Animation) {
        self.animation = spring
        self.duration = 0.4 // Default spring duration estimate
    }
}

// MARK: - Predefined Animation Combinations
public enum SpinnahAnimations {
    
    // MARK: - Micro Interactions
    
    /// Instant feedback animation
    /// Use for: Immediate state changes
    public static let instantFeedback = SpinnahAnimation(
        curve: SpinnahCurves.springSnappy,
        duration: SpinnahDuration.instant
    )
    
    /// Quick hover animation
    /// Use for: Hover states, small scale changes
    public static let quickHover = SpinnahAnimation(
        curve: SpinnahCurves.springStandard,
        duration: SpinnahDuration.fast
    )
    
    /// Button press animation
    /// Use for: Button tap feedback
    public static let buttonPress = SpinnahAnimation(
        curve: SpinnahCurves.springSnappy,
        duration: SpinnahDuration.fast
    )
    
    // MARK: - Standard UI Animations
    
    /// Standard UI transition
    /// Use for: Most interface animations
    public static let uiTransition = SpinnahAnimation(
        curve: SpinnahCurves.springStandard,
        duration: SpinnahDuration.standard
    )
    
    /// Smooth fade animation
    /// Use for: Opacity changes, content swapping
    public static let smoothFade = SpinnahAnimation(
        curve: SpinnahCurves.easeInOut,
        duration: SpinnahDuration.standard
    )
    
    /// Gentle scale animation
    /// Use for: Card appearances, zoom effects
    public static let gentleScale = SpinnahAnimation(
        curve: SpinnahCurves.springGentle,
        duration: SpinnahDuration.medium
    )
    
    // MARK: - Sheet & Modal Animations
    
    /// Sheet presentation
    /// Use for: Bottom sheets, slide-up modals
    public static let sheetPresent = SpinnahAnimation(
        curve: SpinnahCurves.springStandard,
        duration: SpinnahDuration.medium
    )
    
    /// Modal appearance
    /// Use for: Modal dialogs, popover presentations
    public static let modalAppear = SpinnahAnimation(
        curve: SpinnahCurves.springGentle,
        duration: SpinnahDuration.medium
    )
    
    /// Popover animation
    /// Use for: Tooltip appearances, small popovers
    public static let popover = SpinnahAnimation(
        curve: SpinnahCurves.springBouncy,
        duration: SpinnahDuration.quick
    )
    
    // MARK: - Page Transitions
    
    /// Page transition
    /// Use for: Navigation between screens
    public static let pageTransition = SpinnahAnimation(
        curve: SpinnahCurves.springSmooth,
        duration: SpinnahDuration.slow
    )
    
    /// Hero transition
    /// Use for: Dramatic page reveals
    public static let heroTransition = SpinnahAnimation(
        curve: SpinnahCurves.anticipation,
        duration: SpinnahDuration.dramatic
    )
    
    /// Splash animation
    /// Use for: App launch, major reveals
    public static let splash = SpinnahAnimation(
        curve: SpinnahCurves.overshoot,
        duration: SpinnahDuration.epic
    )
    
    // MARK: - Success & Feedback Animations
    
    /// Success confirmation
    /// Use for: Completed actions, checkmarks
    public static let success = SpinnahAnimation(
        curve: SpinnahCurves.springBouncy,
        duration: SpinnahDuration.medium
    )
    
    /// Error shake
    /// Use for: Error states, invalid inputs
    public static let errorShake = SpinnahAnimation(
        curve: SpinnahCurves.springSnappy,
        duration: SpinnahDuration.fast
    )
    
    /// Loading pulse
    /// Use for: Loading states, progress indicators
    public static let loadingPulse = SpinnahAnimation(
        curve: SpinnahCurves.easeInOut,
        duration: SpinnahDuration.slow
    )
}

// MARK: - Semantic Animation Aliases
public extension SpinnahAnimations {
    
    // MARK: - Component Animations
    
    /// Standard button animation
    static let button = buttonPress
    
    /// Card hover animation
    static let cardHover = quickHover
    
    /// Card appearance animation
    static let cardAppear = gentleScale
    
    /// Toolbar animation
    static let toolbar = uiTransition
    
    /// Navigation animation
    static let navigation = pageTransition
    
    /// Tab switch animation
    static let tabSwitch = smoothFade
    
    /// List item animation
    static let listItem = uiTransition
    
    /// Ornament animation
    static let ornament = modalAppear
    
    // MARK: - State Animations
    
    /// Focus state animation
    static let focus = quickHover
    
    /// Active state animation
    static let active = buttonPress
    
    /// Disabled state animation
    static let disabled = smoothFade
    
    /// Selected state animation
    static let selected = success
    
    // MARK: - Content Animations
    
    /// Text appearance
    static let textAppear = smoothFade
    
    /// Image load animation
    static let imageLoad = gentleScale
    
    /// Icon animation
    static let icon = instantFeedback
    
    /// Progress animation
    static let progress = loadingPulse
}

// MARK: - SwiftUI Animation Extensions
public extension Animation {
    
    /// Creates animation with Spinnah duration
    /// - Parameter duration: Spinnah duration token
    /// - Returns: Animation with specified duration
    static func spinnah(duration: Double) -> Animation {
        return .easeInOut(duration: duration)
    }
    
    /// Creates spring animation with Spinnah parameters
    /// - Parameters:
    ///   - response: Animation response time
    ///   - damping: Damping fraction
    /// - Returns: Spring animation
    static func spinnahSpring(response: Double = 0.4, damping: Double = 0.8) -> Animation {
        return .spring(response: response, dampingFraction: damping, blendDuration: 0)
    }
}

// MARK: - SwiftUI View Extensions
public extension View {
    
    /// Applies Spinnah animation to view changes
    /// - Parameter animation: Spinnah animation configuration
    /// - Returns: View with applied animation
    func spinnahAnimation(_ animation: SpinnahAnimation) -> some View {
        self.animation(animation.animation, value: UUID())
    }
    
    /// Applies standard UI animation
    func spinnahUIAnimation() -> some View {
        self.animation(SpinnahAnimations.uiTransition.animation, value: UUID())
    }
    
    /// Applies quick hover animation for interactive elements
    func spinnahHoverAnimation() -> some View {
        self.animation(SpinnahAnimations.quickHover.animation, value: UUID())
    }
    
    /// Applies button press animation
    func spinnahButtonAnimation() -> some View {
        self.animation(SpinnahAnimations.buttonPress.animation, value: UUID())
    }
    
    /// Applies smooth fade animation
    func spinnahFadeAnimation() -> some View {
        self.animation(SpinnahAnimations.smoothFade.animation, value: UUID())
    }
    
    /// Applies gentle scale animation
    func spinnahScaleAnimation() -> some View {
        self.animation(SpinnahAnimations.gentleScale.animation, value: UUID())
    }
}

// MARK: - Animation State Management
public extension View {
    
    /// Animated scale effect for interactive elements
    /// - Parameters:
    ///   - isPressed: Whether element is currently pressed
    ///   - scale: Scale factor when pressed
    /// - Returns: View with animated scale
    func spinnahInteractiveScale(isPressed: Bool, scale: Double = 0.95) -> some View {
        self
            .scaleEffect(isPressed ? scale : 1.0)
            .animation(SpinnahAnimations.buttonPress.animation, value: isPressed)
    }
    
    /// Animated opacity for state changes
    /// - Parameters:
    ///   - isVisible: Whether element should be visible
    ///   - animation: Animation to use (defaults to smooth fade)
    /// - Returns: View with animated opacity
    func spinnahAnimatedOpacity(
        isVisible: Bool,
        animation: SpinnahAnimation = SpinnahAnimations.smoothFade
    ) -> some View {
        self
            .opacity(isVisible ? 1.0 : 0.0)
            .animation(animation.animation, value: isVisible)
    }
    
    /// Animated offset for slide transitions
    /// - Parameters:
    ///   - isPresented: Whether element should be in final position
    ///   - offset: Offset when not presented
    ///   - animation: Animation to use
    /// - Returns: View with animated offset
    func spinnahAnimatedSlide(
        isPresented: Bool,
        offset: CGSize = CGSize(width: 0, height: 50),
        animation: SpinnahAnimation = SpinnahAnimations.sheetPresent
    ) -> some View {
        self
            .offset(isPresented ? .zero : offset)
            .animation(animation.animation, value: isPresented)
    }
}

// MARK: - Advanced Animation Helpers
public extension View {
    
    /// Creates a repeating pulse animation
    /// - Parameters:
    ///   - isActive: Whether pulse should be active
    ///   - scale: Maximum scale during pulse
    ///   - duration: Duration of one pulse cycle
    /// - Returns: View with pulse animation
    func spinnahPulse(
        isActive: Bool,
        scale: Double = 1.1,
        duration: Double = SpinnahDuration.slow
    ) -> some View {
        self
            .scaleEffect(isActive ? scale : 1.0)
            .animation(
                isActive ?
                    .easeInOut(duration: duration).repeatForever(autoreverses: true) :
                    .easeInOut(duration: SpinnahDuration.fast),
                value: isActive
            )
    }
    
    /// Creates a shake animation for error states
    /// - Parameter isShaking: Whether shake should be active
    /// - Returns: View with shake animation
    func spinnahShake(isShaking: Bool) -> some View {
        self
            .offset(x: isShaking ? 5 : 0)
            .animation(
                isShaking ?
                    .easeInOut(duration: 0.1).repeatCount(3, autoreverses: true) :
                    .easeInOut(duration: 0.1),
                value: isShaking
            )
    }
    
    /// Creates a rotation animation
    /// - Parameters:
    ///   - isRotating: Whether rotation should be active
    ///   - duration: Duration of one rotation
    /// - Returns: View with rotation animation
    func spinnahRotate(
        isRotating: Bool,
        duration: Double = SpinnahDuration.slow
    ) -> some View {
        self
            .rotationEffect(.degrees(isRotating ? 360 : 0))
            .animation(
                isRotating ?
                    .linear(duration: duration).repeatForever(autoreverses: false) :
                    .linear(duration: SpinnahDuration.fast),
                value: isRotating
            )
    }
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahAnimations_Previews: PreviewProvider {
    @State private static var isAnimating = false
    @State private static var selectedDemo = "Basic"
    
    static var previews: some View {
        ScrollView {
            VStack(spacing: SpinnahSpacing.lg) {
                
                // Control Panel
                VStack(spacing: SpinnahSpacing.sm) {
                    Text("Animation System Demo")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    Button("Toggle Animations") {
                        isAnimating.toggle()
                    }
                    .spinnahButtonAnimation()
                    
                    Picker("Demo Type", selection: $selectedDemo) {
                        Text("Basic").tag("Basic")
                        Text("Interactive").tag("Interactive")
                        Text("Advanced").tag("Advanced")
                    }
                    .pickerStyle(.segmented)
                }
                
                // Demo Content
                Group {
                    switch selectedDemo {
                    case "Basic":
                        basicAnimationDemo
                    case "Interactive":
                        interactiveAnimationDemo
                    case "Advanced":
                        advancedAnimationDemo
                    default:
                        basicAnimationDemo
                    }
                }
            }
            .spinnahPageMargins()
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Animation System")
    }
    
    private static var basicAnimationDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // Duration Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Animation Durations")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: SpinnahSpacing.sm) {
                    durationDemo("Fast", SpinnahDuration.fast, SpinnahCurves.springStandard)
                    durationDemo("Standard", SpinnahDuration.standard, SpinnahCurves.springStandard)
                    durationDemo("Slow", SpinnahDuration.slow, SpinnahCurves.springStandard)
                }
            }
            
            // Spring Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Spring Curves")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: SpinnahSpacing.sm) {
                    springDemo("Gentle", SpinnahCurves.springGentle)
                    springDemo("Standard", SpinnahCurves.springStandard)
                    springDemo("Bouncy", SpinnahCurves.springBouncy)
                }
            }
        }
    }
    
    private static var interactiveAnimationDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // Button Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Interactive Elements")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    buttonAnimationDemo("Primary", color: Color.spinnahPrimary)
                    buttonAnimationDemo("Secondary", color: Color.spinnahSecondary)
                    buttonAnimationDemo("Success", color: .green)
                }
            }
            
            // Card Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Card Animations")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    cardAnimationDemo("Standard Card")
                    cardAnimationDemo("Elevated Card")
                }
            }
        }
    }
    
    private static var advancedAnimationDemo: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // Special Effects
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Advanced Effects")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    pulseDemo
                    shakeDemo
                    rotateDemo
                }
            }
            
            // Transition Examples
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Transition Effects")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    slideDemo
                    fadeDemo
                    scaleDemo
                }
            }
        }
    }
    
    // Helper demo components
    private static func durationDemo(_ name: String, _ duration: Double, _ curve: Animation) -> some View {
        VStack(spacing: 4) {
            Circle()
                .fill(Color.spinnahPrimary)
                .frame(width: 40, height: 40)
                .scaleEffect(isAnimating ? 1.3 : 1.0)
                .animation(curve, value: isAnimating)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
            
            Text("\(duration, specifier: "%.1f")s")
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func springDemo(_ name: String, _ spring: Animation) -> some View {
        VStack(spacing: 4) {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.spinnahSecondary)
                .frame(width: 50, height: 30)
                .scaleEffect(isAnimating ? 1.2 : 1.0)
                .animation(spring, value: isAnimating)
            
            Text(name)
                .font(SpinnahFonts.captionL)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
    
    private static func buttonAnimationDemo(_ label: String, color: Color) -> some View {
        @State var isPressed = false
        
        return Button(action: {
            isPressed = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                isPressed = false
            }
        }) {
            Text(label)
                .font(SpinnahFonts.labelM)
                .foregroundStyle(.white)
                .padding(.horizontal, SpinnahSpacing.sm)
                .padding(.vertical, SpinnahSpacing.xs)
                .background(color)
                .cornerRadius(SpinnahCornerRadius.button)
        }
        .spinnahInteractiveScale(isPressed: isPressed)
        .buttonStyle(.plain)
    }
    
    private static func cardAnimationDemo(_ title: String) -> some View {
        @State var isHovered = false
        
        return VStack {
            Text(title)
                .font(SpinnahFonts.labelS)
                .foregroundStyle(Color.spinnahTextPrimary)
        }
        .frame(width: 100, height: 60)
        .background(Color.spinnahCardElevated)
        .cornerRadius(SpinnahCornerRadius.card)
        .scaleEffect(isHovered ? 1.05 : 1.0)
        .spinnahCardShadow()
        .onHover { isHovered = $0 }
        .spinnahHoverAnimation()
    }
    
    private static var pulseDemo: some View {
        Circle()
            .fill(Color.spinnahGradientStart)
            .frame(width: 50, height: 50)
            .spinnahPulse(isActive: isAnimating)
            .overlay(
                Text("Pulse")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(.white)
            )
    }
    
    private static var shakeDemo: some View {
        @State var shouldShake = false
        
        return RoundedRectangle(cornerRadius: 8)
            .fill(Color.red)
            .frame(width: 60, height: 40)
            .spinnahShake(isShaking: shouldShake)
            .overlay(
                Text("Error")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(.white)
            )
            .onTapGesture {
                shouldShake = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    shouldShake = false
                }
            }
    }
    
    private static var rotateDemo: some View {
        Image(systemName: "arrow.clockwise")
            .font(.system(size: 24))
            .foregroundStyle(Color.spinnahPrimary)
            .spinnahRotate(isRotating: isAnimating)
    }
    
    private static var slideDemo: some View {
        Rectangle()
            .fill(Color.spinnahGradientEnd)
            .frame(width: 60, height: 40)
            .cornerRadius(8)
            .spinnahAnimatedSlide(isPresented: isAnimating)
            .overlay(
                Text("Slide")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(.white)
            )
    }
    
    private static var fadeDemo: some View {
        Rectangle()
            .fill(Color.purple)
            .frame(width: 60, height: 40)
            .cornerRadius(8)
            .spinnahAnimatedOpacity(isVisible: isAnimating)
            .overlay(
                Text("Fade")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(.white)
            )
    }
    
    private static var scaleDemo: some View {
        Rectangle()
            .fill(Color.orange)
            .frame(width: 60, height: 40)
            .cornerRadius(8)
            .scaleEffect(isAnimating ? 1.0 : 0.5)
            .spinnahScaleAnimation()
            .overlay(
                Text("Scale")
                    .font(SpinnahFonts.captionS)
                    .foregroundStyle(.white)
            )
    }
}
#endif
