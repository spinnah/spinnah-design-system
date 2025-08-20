//===========================================================================
//  Icons.swift (file version 2)
//  SpinnahDesignSystem (app version 1.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Comprehensive icon system using SF Symbols with semantic organization,
//  size variants, and convenience methods for consistent icon usage
//  across all Spinnah apps.
//===========================================================================

import SwiftUI

// MARK: - Core Icons by Category
public enum SpinnahIcons {
    
    // MARK: - Navigation & Movement
    
    /// Chevron right arrow
    public static let chevronRight = Image(systemName: "chevron.right")
    
    /// Chevron left arrow
    public static let chevronLeft = Image(systemName: "chevron.left")
    
    /// Chevron up arrow
    public static let chevronUp = Image(systemName: "chevron.up")
    
    /// Chevron down arrow
    public static let chevronDown = Image(systemName: "chevron.down")
    
    /// Back navigation arrow
    public static let arrowLeft = Image(systemName: "arrow.left")
    
    /// Forward navigation arrow
    public static let arrowRight = Image(systemName: "arrow.right")
    
    /// Up arrow
    public static let arrowUp = Image(systemName: "arrow.up")
    
    /// Down arrow
    public static let arrowDown = Image(systemName: "arrow.down")
    
    /// Menu hamburger icon
    public static let menu = Image(systemName: "line.3.horizontal")
    
    /// Close/dismiss icon
    public static let close = Image(systemName: "xmark")
    
    /// More options (three dots)
    public static let more = Image(systemName: "ellipsis")
    
    /// More options (vertical)
    public static let moreVertical = Image(systemName: "ellipsis")
    
    // MARK: - System & Interface
    
    /// Settings/preferences gear
    public static let settings = Image(systemName: "gearshape")
    
    /// Settings filled
    public static let settingsFilled = Image(systemName: "gearshape.fill")
    
    /// Search magnifying glass
    public static let search = Image(systemName: "magnifyingglass")
    
    /// Information icon
    public static let info = Image(systemName: "info.circle")
    
    /// Information filled
    public static let infoFilled = Image(systemName: "info.circle.fill")
    
    /// Warning icon
    public static let warning = Image(systemName: "exclamationmark.triangle")
    
    /// Warning filled
    public static let warningFilled = Image(systemName: "exclamationmark.triangle.fill")
    
    /// Error icon
    public static let error = Image(systemName: "xmark.circle")
    
    /// Error filled
    public static let errorFilled = Image(systemName: "xmark.circle.fill")
    
    /// Success checkmark
    public static let success = Image(systemName: "checkmark.circle")
    
    /// Success filled
    public static let successFilled = Image(systemName: "checkmark.circle.fill")
    
    /// Question mark help
    public static let help = Image(systemName: "questionmark.circle")
    
    /// Question mark filled
    public static let helpFilled = Image(systemName: "questionmark.circle.fill")
    
    // MARK: - Actions & Controls
    
    /// Plus/add icon
    public static let add = Image(systemName: "plus")
    
    /// Plus in circle
    public static let addCircle = Image(systemName: "plus.circle")
    
    /// Plus filled circle
    public static let addCircleFilled = Image(systemName: "plus.circle.fill")
    
    /// Minus/remove icon
    public static let remove = Image(systemName: "minus")
    
    /// Minus in circle
    public static let removeCircle = Image(systemName: "minus.circle")
    
    /// Edit/pencil icon
    public static let edit = Image(systemName: "pencil")
    
    /// Delete/trash icon
    public static let delete = Image(systemName: "trash")
    
    /// Delete filled
    public static let deleteFilled = Image(systemName: "trash.fill")
    
    /// Copy icon
    public static let copy = Image(systemName: "doc.on.doc")
    
    /// Share icon
    public static let share = Image(systemName: "square.and.arrow.up")
    
    /// Download icon
    public static let download = Image(systemName: "square.and.arrow.down")
    
    /// Upload icon
    public static let upload = Image(systemName: "square.and.arrow.up")
    
    /// Save icon
    public static let save = Image(systemName: "square.and.arrow.down")
    
    /// Refresh/reload icon
    public static let refresh = Image(systemName: "arrow.clockwise")
    
    // MARK: - Media & Playback
    
    /// Play button
    public static let play = Image(systemName: "play")
    
    /// Play filled
    public static let playFilled = Image(systemName: "play.fill")
    
    /// Play in circle
    public static let playCircle = Image(systemName: "play.circle")
    
    /// Play filled circle
    public static let playCircleFilled = Image(systemName: "play.circle.fill")
    
    /// Pause button
    public static let pause = Image(systemName: "pause")
    
    /// Pause filled
    public static let pauseFilled = Image(systemName: "pause.fill")
    
    /// Stop button
    public static let stop = Image(systemName: "stop")
    
    /// Stop filled
    public static let stopFilled = Image(systemName: "stop.fill")
    
    /// Skip forward
    public static let skipForward = Image(systemName: "forward")
    
    /// Skip backward
    public static let skipBackward = Image(systemName: "backward")
    
    /// Volume up
    public static let volumeUp = Image(systemName: "speaker.wave.3")
    
    /// Volume down
    public static let volumeDown = Image(systemName: "speaker.wave.1")
    
    /// Volume mute
    public static let volumeMute = Image(systemName: "speaker.slash")
    
    // MARK: - Content & Files
    
    /// Document/file icon
    public static let document = Image(systemName: "doc")
    
    /// Document filled
    public static let documentFilled = Image(systemName: "doc.fill")
    
    /// Folder icon
    public static let folder = Image(systemName: "folder")
    
    /// Folder filled
    public static let folderFilled = Image(systemName: "folder.fill")
    
    /// Image/photo icon
    public static let image = Image(systemName: "photo")
    
    /// Image filled
    public static let imageFilled = Image(systemName: "photo.fill")
    
    /// Video icon
    public static let video = Image(systemName: "video")
    
    /// Video filled
    public static let videoFilled = Image(systemName: "video.fill")
    
    /// Music note
    public static let music = Image(systemName: "music.note")
    
    /// Book icon
    public static let book = Image(systemName: "book")
    
    /// Book filled
    public static let bookFilled = Image(systemName: "book.fill")
    
    /// Book closed
    public static let bookClosed = Image(systemName: "book.closed")
    
    /// Book closed filled
    public static let bookClosedFilled = Image(systemName: "book.closed.fill")
    
    /// Text document
    public static let text = Image(systemName: "text.alignleft")
    
    // MARK: - Communication
    
    /// Message/chat icon
    public static let message = Image(systemName: "message")
    
    /// Message filled
    public static let messageFilled = Image(systemName: "message.fill")
    
    /// Mail/email icon
    public static let mail = Image(systemName: "envelope")
    
    /// Mail filled
    public static let mailFilled = Image(systemName: "envelope.fill")
    
    /// Phone icon
    public static let phone = Image(systemName: "phone")
    
    /// Phone filled
    public static let phoneFilled = Image(systemName: "phone.fill")
    
    /// Bell/notification icon
    public static let notification = Image(systemName: "bell")
    
    /// Bell filled
    public static let notificationFilled = Image(systemName: "bell.fill")
    
    /// Bell with badge
    public static let notificationBadge = Image(systemName: "bell.badge")
    
    // MARK: - Social & Favorites
    
    /// Heart/like icon
    public static let heart = Image(systemName: "heart")
    
    /// Heart filled
    public static let heartFilled = Image(systemName: "heart.fill")
    
    /// Star rating icon
    public static let star = Image(systemName: "star")
    
    /// Star filled
    public static let starFilled = Image(systemName: "star.fill")
    
    /// Bookmark icon
    public static let bookmark = Image(systemName: "bookmark")
    
    /// Bookmark filled
    public static let bookmarkFilled = Image(systemName: "bookmark.fill")
    
    /// Profile/person icon
    public static let person = Image(systemName: "person")
    
    /// Person filled
    public static let personFilled = Image(systemName: "person.fill")
    
    /// Person in circle
    public static let personCircle = Image(systemName: "person.circle")
    
    /// Person filled circle
    public static let personCircleFilled = Image(systemName: "person.circle.fill")
    
    /// Multiple people
    public static let people = Image(systemName: "person.2")
    
    /// Multiple people filled
    public static let peopleFilled = Image(systemName: "person.2.fill")
    
    // MARK: - Status & Progress
    
    /// Checkmark
    public static let checkmark = Image(systemName: "checkmark")
    
    /// Checkmark in seal
    public static let checkmarkSeal = Image(systemName: "checkmark.seal")
    
    /// Checkmark filled seal
    public static let checkmarkSealFilled = Image(systemName: "checkmark.seal.fill")
    
    /// Loading/progress circle
    public static let loading = Image(systemName: "arrow.2.circlepath")
    
    /// Clock/time icon
    public static let clock = Image(systemName: "clock")
    
    /// Clock filled
    public static let clockFilled = Image(systemName: "clock.fill")
    
    /// Calendar icon
    public static let calendar = Image(systemName: "calendar")
    
    /// Calendar with badge
    public static let calendarBadge = Image(systemName: "calendar.badge.plus")
    
    // MARK: - Device & Hardware
    
    /// Phone device
    public static let phoneDevice = Image(systemName: "iphone")
    
    /// iPad device
    public static let tabletDevice = Image(systemName: "ipad")
    
    /// Desktop computer
    public static let desktopDevice = Image(systemName: "desktopcomputer")
    
    /// Laptop computer
    public static let laptopDevice = Image(systemName: "laptopcomputer")
    
    /// Apple Watch
    public static let watchDevice = Image(systemName: "applewatch")
    
    /// WiFi icon
    public static let wifi = Image(systemName: "wifi")
    
    /// Battery icon
    public static let battery = Image(systemName: "battery.100")
    
    /// Battery low
    public static let batteryLow = Image(systemName: "battery.25")
    
    // MARK: - Weather & Location
    
    /// Sun/sunny weather
    public static let sun = Image(systemName: "sun.max")
    
    /// Cloud weather
    public static let cloud = Image(systemName: "cloud")
    
    /// Rain weather
    public static let rain = Image(systemName: "cloud.rain")
    
    /// Location pin
    public static let location = Image(systemName: "location")
    
    /// Location filled
    public static let locationFilled = Image(systemName: "location.fill")
    
    /// Map icon
    public static let map = Image(systemName: "map")
    
    /// Map filled
    public static let mapFilled = Image(systemName: "map.fill")
}

// MARK: - Semantic Icon Aliases
public extension SpinnahIcons {
    
    // MARK: - Navigation Aliases
    
    /// Back navigation (context-aware)
    static let back = chevronLeft
    
    /// Forward navigation (context-aware)
    static let forward = chevronRight
    
    /// Expand/show more content
    static let expand = chevronDown
    
    /// Collapse/show less content
    static let collapse = chevronUp
    
    /// Dismiss/close modal or sheet
    static let dismiss = close
    
    /// Menu toggle
    static let menuToggle = menu
    
    // MARK: - Action Aliases
    
    /// Create new item
    static let create = add
    
    /// New item in collection
    static let new = addCircle
    
    /// Remove item from collection
    static let removeItem = removeCircle
    
    /// Export content
    static let export = share
    
    /// Import content
    static let `import` = download
    
    /// Reload/refresh content
    static let reload = refresh
    
    /// Cancel action
    static let cancel = close
    
    /// Confirm action
    static let confirm = checkmark
    
    // MARK: - Content Type Aliases
    
    /// Comic book (specific to Spinnah)
    static let comic = bookClosed
    
    /// Comic filled
    static let comicFilled = bookClosedFilled
    
    /// Article or blog post
    static let article = document
    
    /// Gallery or photo collection
    static let gallery = image
    
    /// Playlist or music collection
    static let playlist = music
    
    /// Archive or compressed file
    static let archive = folder
    
    // MARK: - Status Aliases
    
    /// Completed task or action
    static let completed = successFilled
    
    /// Pending task or action
    static let pending = clock
    
    /// Failed task or action
    static let failed = errorFilled
    
    /// In progress
    static let inProgress = loading
    
    /// Favorite item
    static let favorite = heartFilled
    
    /// Not favorite
    static let notFavorite = heart
    
    /// Starred item
    static let starred = starFilled
    
    /// Not starred
    static let notStarred = star
    
    // MARK: - User Interface Aliases
    
    /// Profile/account icon
    static let profile = personCircle
    
    /// User avatar
    static let avatar = personCircleFilled
    
    /// Team or group
    static let team = people
    
    /// Preferences/settings
    static let preferences = settings
    
    /// Help or support
    static let support = help
    
    /// Feedback
    static let feedback = message
    
    /// Contact us
    static let contact = mail
    
    /// About information
    static let about = info
}

// MARK: - Icon Size Variants
public enum SpinnahIconSize {
    case small      // 12pt
    case medium     // 16pt
    case large      // 20pt
    case xlarge     // 24pt
    case xxlarge    // 32pt
    case xxxlarge   // 48pt
    
    var points: CGFloat {
        switch self {
        case .small: return 12
        case .medium: return 16
        case .large: return 20
        case .xlarge: return 24
        case .xxlarge: return 32
        case .xxxlarge: return 48
        }
    }
    
    var font: Font {
        return .system(size: points, weight: .medium)
    }
}

// MARK: - Icon Styling
public enum SpinnahIconStyle {
    case regular    // Normal weight
    case medium     // Medium weight
    case semibold   // Semi-bold weight
    case bold       // Bold weight
    
    var weight: Font.Weight {
        switch self {
        case .regular: return .regular
        case .medium: return .medium
        case .semibold: return .semibold
        case .bold: return .bold
        }
    }
}

// MARK: - SwiftUI Image Extensions
public extension Image {
    
    /// Applies Spinnah icon styling
    /// - Parameters:
    ///   - size: Icon size from SpinnahIconSize
    ///   - style: Icon weight style
    ///   - color: Icon color (optional)
    /// - Returns: Styled image
    func spinnahIcon(
        size: SpinnahIconSize = .medium,
        style: SpinnahIconStyle = .medium,
        color: Color? = nil
    ) -> some View {
        self
            .font(.system(size: size.points, weight: style.weight))
            .foregroundStyle(color ?? Color.spinnahTextPrimary)
    }
    
    /// Applies small icon styling
    func spinnahSmallIcon(color: Color = Color.spinnahTextPrimary) -> some View {
        self.spinnahIcon(size: .small, color: color)
    }
    
    /// Applies medium icon styling (default)
    func spinnahMediumIcon(color: Color = Color.spinnahTextPrimary) -> some View {
        self.spinnahIcon(size: .medium, color: color)
    }
    
    /// Applies large icon styling
    func spinnahLargeIcon(color: Color = Color.spinnahTextPrimary) -> some View {
        self.spinnahIcon(size: .large, color: color)
    }
    
    /// Applies primary colored icon
    func spinnahPrimaryIcon(size: SpinnahIconSize = .medium) -> some View {
        self.spinnahIcon(size: size, color: Color.spinnahPrimary)
    }
    
    /// Applies secondary colored icon
    func spinnahSecondaryIcon(size: SpinnahIconSize = .medium) -> some View {
        self.spinnahIcon(size: size, color: Color.spinnahSecondary)
    }
    
    /// Applies accent colored icon
    func spinnahAccentIcon(size: SpinnahIconSize = .medium) -> some View {
        self.spinnahIcon(size: size, color: Color.spinnahAccent)
    }
    
    /// Applies success colored icon
    func spinnahSuccessIcon(size: SpinnahIconSize = .medium) -> some View {
        self.spinnahIcon(size: size, color: Color.spinnahSuccess)
    }
    
    /// Applies error colored icon
    func spinnahErrorIcon(size: SpinnahIconSize = .medium) -> some View {
        self.spinnahIcon(size: size, color: Color.spinnahError)
    }
    
    /// Applies warning colored icon
    func spinnahWarningIcon(size: SpinnahIconSize = .medium) -> some View {
        self.spinnahIcon(size: size, color: Color.spinnahWarning)
    }
    
    /// Applies disabled icon appearance
    func spinnahDisabledIcon(size: SpinnahIconSize = .medium) -> some View {
        self.spinnahIcon(size: size, color: Color.spinnahTextSecondary.spinnahOpacity(SpinnahOpacity.disabled))
    }
}

// MARK: - Icon with Text Combinations
public struct SpinnahIconText: View {
    let icon: Image
    let text: String
    let iconSize: SpinnahIconSize
    let spacing: CGFloat
    let alignment: HorizontalAlignment
    
    public init(
        icon: Image,
        text: String,
        iconSize: SpinnahIconSize = .medium,
        spacing: CGFloat = SpinnahSpacing.xs,
        alignment: HorizontalAlignment = .leading
    ) {
        self.icon = icon
        self.text = text
        self.iconSize = iconSize
        self.spacing = spacing
        self.alignment = alignment
    }
    
    public var body: some View {
        HStack(spacing: spacing) {
            icon.spinnahIcon(size: iconSize)
            Text(text)
                .font(SpinnahFonts.bodyM)
                .foregroundStyle(Color.spinnahTextPrimary)
        }
    }
}

// MARK: - Convenience Icon Text Combinations
public extension SpinnahIconText {
    
    /// Create icon with text for navigation items
    static func navigation(icon: Image, text: String) -> SpinnahIconText {
        SpinnahIconText(icon: icon, text: text, iconSize: .medium)
    }
    
    /// Create icon with text for toolbar items
    static func toolbar(icon: Image, text: String) -> SpinnahIconText {
        SpinnahIconText(icon: icon, text: text, iconSize: .small)
    }
    
    /// Create icon with text for menu items
    static func menu(icon: Image, text: String) -> SpinnahIconText {
        SpinnahIconText(icon: icon, text: text, iconSize: .medium)
    }
    
    /// Create icon with text for status indicators
    static func status(icon: Image, text: String) -> SpinnahIconText {
        SpinnahIconText(icon: icon, text: text, iconSize: .small)
    }
}

// MARK: - Platform-Specific Icon Adjustments
public extension Image {
    
    /// Returns platform-optimized icon
    func spinnahPlatformIcon(size: SpinnahIconSize = .medium) -> some View {
        #if os(macOS)
        // macOS prefers slightly smaller icons in toolbars
        return self.spinnahIcon(size: size == .medium ? .small : size)
        #elseif os(iOS)
        // iOS standard sizing
        return self.spinnahIcon(size: size)
        #elseif os(visionOS)
        // visionOS might benefit from slightly larger icons
        return self.spinnahIcon(size: size == .medium ? .large : size)
        #else
        return self.spinnahIcon(size: size)
        #endif
    }
}

// MARK: - Preview Provider
#if DEBUG
struct SpinnahIcons_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            VStack(spacing: SpinnahSpacing.lg) {
                
                // Icon Categories
                iconCategoryDemo("Navigation & Movement", icons: [
                    ("chevronRight", SpinnahIcons.chevronRight),
                    ("chevronLeft", SpinnahIcons.chevronLeft),
                    ("menu", SpinnahIcons.menu),
                    ("close", SpinnahIcons.close),
                    ("more", SpinnahIcons.more),
                    ("back", SpinnahIcons.back)
                ])
                
                iconCategoryDemo("System & Interface", icons: [
                    ("settings", SpinnahIcons.settings),
                    ("search", SpinnahIcons.search),
                    ("info", SpinnahIcons.info),
                    ("warning", SpinnahIcons.warning),
                    ("error", SpinnahIcons.error),
                    ("success", SpinnahIcons.success)
                ])
                
                iconCategoryDemo("Actions & Controls", icons: [
                    ("add", SpinnahIcons.add),
                    ("remove", SpinnahIcons.remove),
                    ("edit", SpinnahIcons.edit),
                    ("delete", SpinnahIcons.delete),
                    ("share", SpinnahIcons.share),
                    ("save", SpinnahIcons.save)
                ])
                
                iconCategoryDemo("Media & Playback", icons: [
                    ("play", SpinnahIcons.play),
                    ("pause", SpinnahIcons.pause),
                    ("stop", SpinnahIcons.stop),
                    ("skipForward", SpinnahIcons.skipForward),
                    ("volumeUp", SpinnahIcons.volumeUp),
                    ("volumeMute", SpinnahIcons.volumeMute)
                ])
                
                iconCategoryDemo("Content & Files", icons: [
                    ("document", SpinnahIcons.document),
                    ("folder", SpinnahIcons.folder),
                    ("image", SpinnahIcons.image),
                    ("book", SpinnahIcons.book),
                    ("comic", SpinnahIcons.comic),
                    ("music", SpinnahIcons.music)
                ])
                
                // Size Variants
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Icon Sizes")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    HStack(spacing: SpinnahSpacing.md) {
                        iconSizeDemo("Small", SpinnahIcons.settings, .small)
                        iconSizeDemo("Medium", SpinnahIcons.settings, .medium)
                        iconSizeDemo("Large", SpinnahIcons.settings, .large)
                        iconSizeDemo("XL", SpinnahIcons.settings, .xlarge)
                        iconSizeDemo("XXL", SpinnahIcons.settings, .xxlarge)
                    }
                }
                
                // Color Variants
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Icon Colors")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    HStack(spacing: SpinnahSpacing.md) {
                        VStack(spacing: 4) {
                            SpinnahIcons.heart.spinnahPrimaryIcon()
                            Text("Primary")
                                .font(SpinnahFonts.captionS)
                                .foregroundStyle(Color.spinnahTextSecondary)
                        }
                        
                        VStack(spacing: 4) {
                            SpinnahIcons.heart.spinnahSecondaryIcon()
                            Text("Secondary")
                                .font(SpinnahFonts.captionS)
                                .foregroundStyle(Color.spinnahTextSecondary)
                        }
                        
                        VStack(spacing: 4) {
                            SpinnahIcons.heart.spinnahSuccessIcon()
                            Text("Success")
                                .font(SpinnahFonts.captionS)
                                .foregroundStyle(Color.spinnahTextSecondary)
                        }
                        
                        VStack(spacing: 4) {
                            SpinnahIcons.heart.spinnahErrorIcon()
                            Text("Error")
                                .font(SpinnahFonts.captionS)
                                .foregroundStyle(Color.spinnahTextSecondary)
                        }
                        
                        VStack(spacing: 4) {
                            SpinnahIcons.heart.spinnahWarningIcon()
                            Text("Warning")
                                .font(SpinnahFonts.captionS)
                                .foregroundStyle(Color.spinnahTextSecondary)
                        }
                        
                        VStack(spacing: 4) {
                            SpinnahIcons.heart.spinnahDisabledIcon()
                            Text("Disabled")
                                .font(SpinnahFonts.captionS)
                                .foregroundStyle(Color.spinnahTextSecondary)
                        }
                    }
                }
                
                // Icon with Text Combinations
                VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                    Text("Icon + Text Combinations")
                        .font(SpinnahFonts.headingM)
                        .foregroundStyle(Color.spinnahPrimary)
                    
                    VStack(spacing: SpinnahSpacing.xs) {
                        SpinnahIconText.navigation(icon: SpinnahIcons.settings, text: "Settings")
                        SpinnahIconText.menu(icon: SpinnahIcons.profile, text: "Profile")
                        SpinnahIconText.status(icon: SpinnahIcons.completed, text: "Completed")
                        SpinnahIconText.toolbar(icon: SpinnahIcons.help, text: "Help")
                    }
                }
            }
            .spinnahPageMargins()
        }
        .background(Color.spinnahBackgroundPrimary)
        .previewDisplayName("Icon System")
    }
    
    // Helper functions for preview
    private static func iconCategoryDemo(_ title: String, icons: [(String, Image)]) -> some View {
        VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
            Text(title)
                .font(SpinnahFonts.headingM)
                .foregroundStyle(Color.spinnahPrimary)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 6), spacing: SpinnahSpacing.sm) {
                ForEach(icons, id: \.0) { name, icon in
                    VStack(spacing: 4) {
                        icon.spinnahMediumIcon()
                        Text(name)
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                            .lineLimit(1)
                    }
                    .frame(minHeight: 50)
                }
            }
        }
    }
    
    private static func iconSizeDemo(_ label: String, _ icon: Image, _ size: SpinnahIconSize) -> some View {
        VStack(spacing: 4) {
            icon.spinnahIcon(size: size)
            Text(label)
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
            Text("\(Int(size.points))pt")
                .font(SpinnahFonts.captionS)
                .foregroundStyle(Color.spinnahTextSecondary)
        }
    }
}
#endif
