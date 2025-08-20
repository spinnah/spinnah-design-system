//===========================================================================
//  Icons.swift (file version 4)
//  SpinnahDesignSystem (app version 2.0)
//
//  Created by Shast LeLow on 8/19/25
//
//  Comprehensive icon system using SF Symbols with semantic organization,
//  size variants, animation helpers, state management, and accessibility
//  enhancements for consistent icon usage across all Spinnah apps.
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
    
    // MARK: - Layout & View Controls
    
    /// Grid view 2x2
    public static let gridView = Image(systemName: "square.grid.2x2")
    
    /// Grid view 3x2
    public static let gridViewLarge = Image(systemName: "square.grid.3x2")
    
    /// Grid view 4x3
    public static let gridViewCompact = Image(systemName: "square.grid.4x3.fill")
    
    /// List view
    public static let listView = Image(systemName: "list.bullet")
    
    /// List view with rectangles
    public static let listViewCards = Image(systemName: "list.bullet.rectangle")
    
    /// List view portrait
    public static let listViewPortrait = Image(systemName: "list.bullet.rectangle.portrait")
    
    /// Split view
    public static let splitView = Image(systemName: "rectangle.split.3x1")
    
    /// Sidebar left
    public static let sidebarLeft = Image(systemName: "sidebar.left")
    
    /// Sidebar right
    public static let sidebarRight = Image(systemName: "sidebar.right")
    
    /// Sidebar squares left
    public static let sidebarSquaresLeft = Image(systemName: "sidebar.squares.left")
    
    /// Sidebar squares right
    public static let sidebarSquaresRight = Image(systemName: "sidebar.squares.right")
    
    /// Inspector view
    public static let inspector = Image(systemName: "sidebar.trailing")
    
    // MARK: - Data & Filtering
    
    /// Filter icon
    public static let filter = Image(systemName: "line.3.horizontal.decrease.circle")
    
    /// Filter filled
    public static let filterFilled = Image(systemName: "line.3.horizontal.decrease.circle.fill")
    
    /// Filter active
    public static let filterActive = Image(systemName: "line.3.horizontal.decrease")
    
    /// Sort ascending
    public static let sortAscending = Image(systemName: "arrow.up.arrow.down")
    
    /// Sort descending
    public static let sortDescending = Image(systemName: "arrow.up.arrow.down")
    
    /// Sort by date
    public static let sortByDate = Image(systemName: "calendar.badge.clock")
    
    /// Sort by name
    public static let sortByName = Image(systemName: "textformat.abc")
    
    /// Sort by size
    public static let sortBySize = Image(systemName: "arrow.up.and.down.text.horizontal")
    
    // MARK: - Selection & Visibility
    
    /// Eye visible
    public static let visible = Image(systemName: "eye")
    
    /// Eye hidden
    public static let hidden = Image(systemName: "eye.slash")
    
    /// Show password
    public static let showPassword = Image(systemName: "eye")
    
    /// Hide password
    public static let hidePassword = Image(systemName: "eye.slash")
    
    /// Circle empty (for selection)
    public static let circleEmpty = Image(systemName: "circle")
    
    /// Circle selected
    public static let circleSelected = Image(systemName: "circle.inset.filled")
    
    /// Square empty
    public static let squareEmpty = Image(systemName: "square")
    
    /// Square selected
    public static let squareSelected = Image(systemName: "checkmark.square")
    
    /// Square filled
    public static let squareFilled = Image(systemName: "square.fill")
    
    /// Diamond shape
    public static let diamond = Image(systemName: "diamond")
    
    /// Diamond filled
    public static let diamondFilled = Image(systemName: "diamond.fill")
    
    // MARK: - Toggle & Switches
    
    /// Toggle switch
    public static let toggle = Image(systemName: "switch.2")
    
    /// Power toggle
    public static let powerToggle = Image(systemName: "power")
    
    /// Toggle on
    public static let toggleOn = Image(systemName: "togglepower")
    
    /// Toggle off (represented as power button)
    public static let toggleOff = Image(systemName: "power")
    
    /// Switch control
    public static let switchControl = Image(systemName: "slider.horizontal.3")
    
    /// Slider horizontal
    public static let sliderHorizontal = Image(systemName: "slider.horizontal.below.rectangle")
    
    // MARK: - Expand & Collapse
    
    /// Expand all
    public static let expandAll = Image(systemName: "plus.rectangle.on.folder")
    
    /// Collapse all
    public static let collapseAll = Image(systemName: "minus.rectangle.on.folder")
    
    /// Expand vertically
    public static let expandVertical = Image(systemName: "arrow.up.and.down.square")
    
    /// Expand horizontally
    public static let expandHorizontal = Image(systemName: "arrow.left.and.right.square")
    
    /// Full screen
    public static let fullScreen = Image(systemName: "arrow.up.left.and.arrow.down.right")
    
    /// Exit full screen
    public static let exitFullScreen = Image(systemName: "arrow.down.right.and.arrow.up.left")
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
    
    // MARK: - Layout & View Aliases
    
    /// Switch to grid view
    static let switchToGrid = gridView
    
    /// Switch to list view
    static let switchToList = listView
    
    /// Show sidebar
    static let showSidebar = sidebarLeft
    
    /// Hide sidebar
    static let hideSidebar = sidebarLeft
    
    /// Toggle inspector
    static let toggleInspector = inspector
    
    /// Enter full screen
    static let enterFullScreen = fullScreen
    
    /// Exit full screen mode
    static let exitFullScreenMode = exitFullScreen
    
    // MARK: - Data Management Aliases
    
    /// Apply filter
    static let applyFilter = filterActive
    
    /// Clear filter
    static let clearFilter = filter
    
    /// Sort items
    static let sort = sortAscending
    
    /// Sort alphabetically
    static let sortAlphabetically = sortByName
    
    /// Sort chronologically
    static let sortChronologically = sortByDate
    
    /// Sort by file size
    static let sortByFileSize = sortBySize
    
    // MARK: - Visibility & Selection Aliases
    
    /// Show content
    static let show = visible
    
    /// Hide content
    static let hide = hidden
    
    /// Reveal password
    static let revealPassword = showPassword
    
    /// Mask password
    static let maskPassword = hidePassword
    
    /// Select item
    static let selectItem = circleSelected
    
    /// Deselect item
    static let deselectItem = circleEmpty
    
    /// Check item
    static let checkItem = squareSelected
    
    /// Uncheck item
    static let uncheckItem = squareEmpty
    
    /// Select all
    static let selectAll = squareFilled
    
    /// Deselect all
    static let deselectAll = squareEmpty
    
    // MARK: - Toggle & Control Aliases
    
    /// Enable feature
    static let enable = toggleOn
    
    /// Disable feature
    static let disable = toggleOff
    
    /// Power on
    static let powerOn = toggleOn
    
    /// Power off
    static let powerOff = toggleOff
    
    /// Adjust setting
    static let adjustSetting = sliderHorizontal
    
    /// Control panel
    static let controlPanel = switchControl
    
    /// Expand section
    static let expandSection = expandAll
    
    /// Collapse section
    static let collapseSection = collapseAll
}

// MARK: - Icon Size Variants
public enum SpinnahIconSize {
    case small      // 12pt
    case medium     // 16pt
    case large      // 20pt
    case xlarge     // 24pt
    case xxlarge    // 32pt
    case xxxlarge   // 48pt
    case accessibility // Dynamic based on accessibility settings
    
    var points: CGFloat {
        switch self {
        case .small: return 12
        case .medium: return 16
        case .large: return 20
        case .xlarge: return 24
        case .xxlarge: return 32
        case .xxxlarge: return 48
        case .accessibility: return accessibilityAdjustedSize()
        }
    }
    
    var font: Font {
        return .system(size: points, weight: .medium)
    }
    
    private func accessibilityAdjustedSize() -> CGFloat {
        #if os(iOS)
        let contentCategory = UIApplication.shared.preferredContentSizeCategory
        switch contentCategory {
        case .extraSmall, .small: return 14
        case .medium: return 16
        case .large: return 18
        case .extraLarge: return 20
        case .extraExtraLarge: return 22
        case .extraExtraExtraLarge: return 24
        case .accessibilityMedium: return 28
        case .accessibilityLarge: return 32
        case .accessibilityExtraLarge: return 36
        case .accessibilityExtraExtraLarge: return 40
        case .accessibilityExtraExtraExtraLarge: return 44
        default: return 16
        }
        #else
        return 16 // Default for macOS/other platforms
        #endif
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

// MARK: - Icon Animation Types
public enum SpinnahIconAnimation {
    case none
    case pulse
    case rotate
    case bounce
    case shake
    case fade
    case scale
    case loading
    
    var duration: Double {
        switch self {
        case .none: return 0
        case .pulse: return 1.0
        case .rotate: return 1.0
        case .bounce: return 0.3
        case .shake: return 0.3
        case .fade: return 0.5
        case .scale: return 0.2
        case .loading: return 1.5
        }
    }
    
    var animation: Animation {
        switch self {
        case .none: return .linear(duration: 0)
        case .pulse: return .easeInOut(duration: duration).repeatForever(autoreverses: true)
        case .rotate: return .linear(duration: duration).repeatForever(autoreverses: false)
        case .bounce: return .spring(response: 0.3, dampingFraction: 0.6)
        case .shake: return .easeInOut(duration: 0.1).repeatCount(3, autoreverses: true)
        case .fade: return .easeInOut(duration: duration)
        case .scale: return .spring(response: 0.2, dampingFraction: 0.8)
        case .loading: return .linear(duration: duration).repeatForever(autoreverses: false)
        }
    }
}

// MARK: - Icon State Management
@MainActor
public class SpinnahIconState: ObservableObject {
    @Published public var isSelected: Bool = false
    @Published public var isFavorited: Bool = false
    @Published public var isStarred: Bool = false
    @Published public var isVisible: Bool = true
    @Published public var isEnabled: Bool = true
    @Published public var isLoading: Bool = false
    @Published public var hasNotification: Bool = false
    @Published public var badgeCount: Int = 0
    
    public init() {}
    
    public func toggle() {
        isSelected.toggle()
    }
    
    public func reset() {
        isSelected = false
        isFavorited = false
        isStarred = false
        isVisible = true
        isEnabled = true
        isLoading = false
        hasNotification = false
        badgeCount = 0
    }
}

// MARK: - Selection Group Management
@MainActor
public class SpinnahIconSelectionGroup: ObservableObject {
    @Published public var selectedItems: Set<String> = []
    @Published public var allowsMultipleSelection: Bool = true
    @Published public var maxSelections: Int? = nil
    
    public init(allowsMultipleSelection: Bool = true, maxSelections: Int? = nil) {
        self.allowsMultipleSelection = allowsMultipleSelection
        self.maxSelections = maxSelections
    }
    
    public func toggle(item: String) {
        if selectedItems.contains(item) {
            selectedItems.remove(item)
        } else {
            if !allowsMultipleSelection {
                selectedItems.removeAll()
            }
            
            if let maxSelections = maxSelections, selectedItems.count >= maxSelections {
                return
            }
            
            selectedItems.insert(item)
        }
    }
    
    public func isSelected(_ item: String) -> Bool {
        return selectedItems.contains(item)
    }
    
    public func selectAll(_ items: [String]) {
        if allowsMultipleSelection {
            if let maxSelections = maxSelections {
                selectedItems = Set(items.prefix(maxSelections))
            } else {
                selectedItems = Set(items)
            }
        }
    }
    
    public func deselectAll() {
        selectedItems.removeAll()
    }
}

// MARK: - Accessibility Enhancements
public struct SpinnahIconAccessibility {
    public let label: String
    public let hint: String?
    public let value: String?
    public let traits: AccessibilityTraits
    
    public init(
        label: String,
        hint: String? = nil,
        value: String? = nil,
        traits: AccessibilityTraits = []
    ) {
        self.label = label
        self.hint = hint
        self.value = value
        self.traits = traits
    }
    
    // MARK: - Predefined Accessibility Labels
    public static let settings = SpinnahIconAccessibility(
        label: "Settings",
        hint: "Opens application settings"
    )
    
    public static let search = SpinnahIconAccessibility(
        label: "Search",
        hint: "Opens search interface"
    )
    
    public static let add = SpinnahIconAccessibility(
        label: "Add",
        hint: "Creates a new item",
        traits: .isButton
    )
    
    public static let delete = SpinnahIconAccessibility(
        label: "Delete",
        hint: "Removes the selected item",
        traits: .isButton
    )
    
    public static let favorite = SpinnahIconAccessibility(
        label: "Favorite",
        hint: "Adds to favorites",
        traits: .isButton
    )
    
    public static let unfavorite = SpinnahIconAccessibility(
        label: "Remove from favorites",
        hint: "Removes from favorites",
        traits: .isButton
    )
    
    public static let star = SpinnahIconAccessibility(
        label: "Star",
        hint: "Adds star rating",
        traits: .isButton
    )
    
    public static let unstar = SpinnahIconAccessibility(
        label: "Remove star",
        hint: "Removes star rating",
        traits: .isButton
    )
    
    public static let play = SpinnahIconAccessibility(
        label: "Play",
        hint: "Starts playback",
        traits: .isButton
    )
    
    public static let pause = SpinnahIconAccessibility(
        label: "Pause",
        hint: "Pauses playback",
        traits: .isButton
    )
    
    public static let loading = SpinnahIconAccessibility(
        label: "Loading",
        hint: "Content is loading"
    )
    
    public static func selected(_ isSelected: Bool) -> SpinnahIconAccessibility {
        SpinnahIconAccessibility(
            label: isSelected ? "Selected" : "Not selected",
            hint: isSelected ? "Tap to deselect" : "Tap to select",
            value: isSelected ? "1" : "0",
            traits: .isButton
        )
    }
    
    public static func toggle(_ isOn: Bool, label: String) -> SpinnahIconAccessibility {
        SpinnahIconAccessibility(
            label: label,
            hint: isOn ? "Tap to turn off" : "Tap to turn on",
            value: isOn ? "1" : "0",
            traits: .isButton
        )
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
    
    /// Applies accessibility-enhanced icon styling
    /// - Parameters:
    ///   - size: Icon size (automatically adjusts for accessibility)
    ///   - accessibility: Accessibility configuration
    ///   - color: Icon color
    /// - Returns: Accessible styled image
    func spinnahAccessibleIcon(
        size: SpinnahIconSize = .accessibility,
        accessibility: SpinnahIconAccessibility,
        color: Color = Color.spinnahTextPrimary
    ) -> some View {
        self
            .spinnahIcon(size: size, color: color)
            .accessibilityLabel(accessibility.label)
            .accessibilityHint(accessibility.hint ?? "")
            .accessibilityValue(accessibility.value ?? "")
            .accessibilityAddTraits(accessibility.traits)
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
    
    /// Applies high contrast icon styling for accessibility
    func spinnahHighContrastIcon(
        size: SpinnahIconSize = .medium,
        isHighContrast: Bool = false
    ) -> some View {
        let color = isHighContrast ? Color.primary : Color.spinnahTextPrimary
        let weight: SpinnahIconStyle = isHighContrast ? .bold : .medium
        
        return self.spinnahIcon(size: size, style: weight, color: color)
    }
}

// MARK: - Icon Animation Extensions
public extension Image {
    
    /// Applies loading spinner animation
    /// - Parameters:
    ///   - isLoading: Whether the loading animation should be active
    ///   - size: Icon size
    ///   - color: Icon color
    /// - Returns: Animated loading icon
    func spinnahLoadingIcon(
        isLoading: Bool,
        size: SpinnahIconSize = .medium,
        color: Color = Color.spinnahPrimary
    ) -> some View {
        self
            .spinnahAccessibleIcon(
                size: size,
                accessibility: .loading,
                color: color
            )
            .rotationEffect(.degrees(isLoading ? 360 : 0))
            .animation(
                isLoading ?
                    .linear(duration: 1.0).repeatForever(autoreverses: false) :
                    .linear(duration: 0.3),
                value: isLoading
            )
    }
    
    /// Applies pulse animation for notifications or attention
    /// - Parameters:
    ///   - isPulsing: Whether the pulse animation should be active
    ///   - size: Icon size
    ///   - color: Icon color
    ///   - pulseScale: Maximum scale during pulse (default: 1.2)
    /// - Returns: Animated pulsing icon
    func spinnahPulseIcon(
        isPulsing: Bool,
        size: SpinnahIconSize = .medium,
        color: Color = Color.spinnahPrimary,
        pulseScale: Double = 1.2
    ) -> some View {
        self
            .spinnahIcon(size: size, color: color)
            .scaleEffect(isPulsing ? pulseScale : 1.0)
            .animation(
                isPulsing ?
                    .easeInOut(duration: 0.8).repeatForever(autoreverses: true) :
                    .easeInOut(duration: 0.3),
                value: isPulsing
            )
    }
    
    /// Applies bounce animation for button presses or interactions
    /// - Parameters:
    ///   - isPressed: Whether the button is currently pressed
    ///   - size: Icon size
    ///   - color: Icon color
    ///   - bounceScale: Scale factor when pressed (default: 0.9)
    /// - Returns: Animated bouncing icon
    func spinnahBounceIcon(
        isPressed: Bool,
        size: SpinnahIconSize = .medium,
        color: Color = Color.spinnahPrimary,
        bounceScale: Double = 0.9
    ) -> some View {
        self
            .spinnahIcon(size: size, color: color)
            .scaleEffect(isPressed ? bounceScale : 1.0)
            .animation(SpinnahIconAnimation.bounce.animation, value: isPressed)
    }
    
    /// Applies shake animation for error states
    /// - Parameters:
    ///   - shouldShake: Whether the shake animation should trigger
    ///   - size: Icon size
    ///   - color: Icon color (defaults to error color)
    /// - Returns: Animated shaking icon
    func spinnahShakeIcon(
        shouldShake: Bool,
        size: SpinnahIconSize = .medium,
        color: Color = Color.spinnahError
    ) -> some View {
        self
            .spinnahIcon(size: size, color: color)
            .offset(x: shouldShake ? 5 : 0)
            .animation(SpinnahIconAnimation.shake.animation, value: shouldShake)
    }
    
    /// Applies fade transition animation
    /// - Parameters:
    ///   - isVisible: Whether the icon should be visible
    ///   - size: Icon size
    ///   - color: Icon color
    /// - Returns: Animated fading icon
    func spinnahFadeIcon(
        isVisible: Bool,
        size: SpinnahIconSize = .medium,
        color: Color = Color.spinnahPrimary
    ) -> some View {
        self
            .spinnahIcon(size: size, color: color)
            .opacity(isVisible ? 1.0 : 0.0)
            .animation(SpinnahIconAnimation.fade.animation, value: isVisible)
    }
    
    /// Applies scale transition animation
    /// - Parameters:
    ///   - isScaled: Whether the icon should be scaled up
    ///   - size: Icon size
    ///   - color: Icon color
    ///   - targetScale: Target scale factor (default: 1.3)
    /// - Returns: Animated scaling icon
    func spinnahScaleIcon(
        isScaled: Bool,
        size: SpinnahIconSize = .medium,
        color: Color = Color.spinnahPrimary,
        targetScale: Double = 1.3
    ) -> some View {
        self
            .spinnahIcon(size: size, color: color)
            .scaleEffect(isScaled ? targetScale : 1.0)
            .animation(SpinnahIconAnimation.scale.animation, value: isScaled)
    }
    
    /// Applies rotation animation
    /// - Parameters:
    ///   - isRotating: Whether the rotation should be active
    ///   - size: Icon size
    ///   - color: Icon color
    ///   - duration: Rotation duration (default: 2.0 seconds)
    /// - Returns: Animated rotating icon
    func spinnahRotateIcon(
        isRotating: Bool,
        size: SpinnahIconSize = .medium,
        color: Color = Color.spinnahPrimary,
        duration: Double = 2.0
    ) -> some View {
        self
            .spinnahIcon(size: size, color: color)
            .rotationEffect(.degrees(isRotating ? 360 : 0))
            .animation(
                isRotating ?
                    .linear(duration: duration).repeatForever(autoreverses: false) :
                    .linear(duration: 0.3),
                value: isRotating
            )
    }
}

// MARK: - Icon State Management with Animations
public extension Image {
    
    /// Animated toggle between two icons with smooth transition
    /// - Parameters:
    ///   - isToggled: Current toggle state
    ///   - alternateIcon: Icon to show when toggled
    ///   - size: Icon size
    ///   - primaryColor: Color for primary state
    ///   - toggledColor: Color for toggled state
    /// - Returns: Animated icon that transitions between states
    func spinnahToggleIcon(
        isToggled: Bool,
        alternateIcon: Image,
        size: SpinnahIconSize = .medium,
        primaryColor: Color = Color.spinnahTextSecondary,
        toggledColor: Color = Color.spinnahPrimary
    ) -> some View {
        ZStack {
            // Primary icon
            self
                .spinnahIcon(size: size, color: primaryColor)
                .opacity(isToggled ? 0 : 1)
                .scaleEffect(isToggled ? 0.5 : 1.0)
            
            // Alternate icon
            alternateIcon
                .spinnahIcon(size: size, color: toggledColor)
                .opacity(isToggled ? 1 : 0)
                .scaleEffect(isToggled ? 1.0 : 0.5)
        }
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isToggled)
    }
    
    /// Animated selection state with scale and color transition
    /// - Parameters:
    ///   - isSelected: Whether the icon is selected
    ///   - size: Icon size
    ///   - unselectedColor: Color when not selected
    ///   - selectedColor: Color when selected
    /// - Returns: Animated selection icon
    func spinnahSelectionIcon(
        isSelected: Bool,
        size: SpinnahIconSize = .medium,
        unselectedColor: Color = Color.spinnahTextSecondary,
        selectedColor: Color = Color.spinnahPrimary
    ) -> some View {
        self
            .spinnahAccessibleIcon(
                size: size,
                accessibility: .selected(isSelected),
                color: isSelected ? selectedColor : unselectedColor
            )
            .scaleEffect(isSelected ? 1.1 : 1.0)
            .animation(.spring(response: 0.2, dampingFraction: 0.8), value: isSelected)
    }
    
    /// Animated favorite/heart with bounce effect
    /// - Parameters:
    ///   - isFavorited: Whether the item is favorited
    ///   - size: Icon size
    /// - Returns: Animated favorite icon
    func spinnahFavoriteIcon(
        isFavorited: Bool,
        size: SpinnahIconSize = .medium
    ) -> some View {
        (isFavorited ? SpinnahIcons.heartFilled : SpinnahIcons.heart)
            .spinnahAccessibleIcon(
                size: size,
                accessibility: isFavorited ? .unfavorite : .favorite,
                color: isFavorited ? Color.spinnahError : Color.spinnahTextSecondary
            )
            .scaleEffect(isFavorited ? 1.2 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isFavorited)
    }
    
    /// Animated star rating with bounce effect
    /// - Parameters:
    ///   - isStarred: Whether the item is starred
    ///   - size: Icon size
    /// - Returns: Animated star icon
    func spinnahStarIcon(
        isStarred: Bool,
        size: SpinnahIconSize = .medium
    ) -> some View {
        (isStarred ? SpinnahIcons.starFilled : SpinnahIcons.star)
            .spinnahAccessibleIcon(
                size: size,
                accessibility: isStarred ? .unstar : .star,
                color: isStarred ? Color.orange : Color.spinnahTextSecondary
            )
            .scaleEffect(isStarred ? 1.1 : 1.0)
            .animation(.spring(response: 0.2, dampingFraction: 0.7), value: isStarred)
    }
    
    /// Stateful icon with ObservableObject binding
    /// - Parameters:
    ///   - state: Icon state object
    ///   - size: Icon size
    /// - Returns: Stateful icon view
    func spinnahStatefulIcon(
        state: SpinnahIconState,
        size: SpinnahIconSize = .medium
    ) -> some View {
        self
            .spinnahSelectionIcon(
                isSelected: state.isSelected,
                size: size
            )
            .opacity(state.isEnabled ? 1.0 : 0.5)
            .scaleEffect(state.isLoading ? 1.1 : 1.0)
            .animation(.easeInOut, value: state.isEnabled)
            .animation(.spring(), value: state.isLoading)
    }
}

// MARK: - Specialized Animation Helpers
public extension Image {
    
    /// Creates a notification badge with pulse animation
    /// - Parameters:
    ///   - hasNotification: Whether there are notifications
    ///   - size: Icon size
    /// - Returns: Animated notification icon
    func spinnahNotificationIcon(
        hasNotification: Bool,
        size: SpinnahIconSize = .medium
    ) -> some View {
        ZStack {
            // Base bell icon
            self.spinnahIcon(size: size, color: Color.spinnahTextPrimary)
            
            // Notification indicator
            if hasNotification {
                Circle()
                    .fill(Color.spinnahError)
                    .frame(width: size.points * 0.4, height: size.points * 0.4)
                    .offset(x: size.points * 0.3, y: -size.points * 0.3)
                    .spinnahPulseIcon(isPulsing: true, size: .small, color: Color.spinnahError)
            }
        }
        .accessibilityLabel(hasNotification ? "Notifications pending" : "No notifications")
        .accessibilityValue(hasNotification ? "1" : "0")
    }
    
    /// Creates a play/pause toggle with smooth transition
    /// - Parameters:
    ///   - isPlaying: Whether content is currently playing
    ///   - size: Icon size
    /// - Returns: Animated play/pause icon
    func spinnahPlayPauseIcon(
        isPlaying: Bool,
        size: SpinnahIconSize = .medium
    ) -> some View {
        (isPlaying ? SpinnahIcons.pause : SpinnahIcons.play)
            .spinnahAccessibleIcon(
                size: size,
                accessibility: isPlaying ? .pause : .play,
                color: Color.spinnahPrimary
            )
            .scaleEffect(isPlaying ? 1.0 : 1.1)
            .animation(.spring(response: 0.2, dampingFraction: 0.8), value: isPlaying)
    }
    
    /// Creates a visibility toggle with fade transition
    /// - Parameters:
    ///   - isVisible: Whether content is visible
    ///   - size: Icon size
    /// - Returns: Animated visibility icon
    func spinnahVisibilityIcon(
        isVisible: Bool,
        size: SpinnahIconSize = .medium
    ) -> some View {
        (isVisible ? SpinnahIcons.visible : SpinnahIcons.hidden)
            .spinnahAccessibleIcon(
                size: size,
                accessibility: .toggle(isVisible, label: "Visibility"),
                color: Color.spinnahTextPrimary
            )
            .animation(.easeInOut(duration: 0.2), value: isVisible)
    }
    
    /// Creates a selection group icon with group state
    /// - Parameters:
    ///   - itemId: Unique identifier for this item
    ///   - selectionGroup: Selection group manager
    ///   - size: Icon size
    /// - Returns: Group-managed selection icon
    func spinnahGroupSelectionIcon(
        itemId: String,
        selectionGroup: SpinnahIconSelectionGroup,
        size: SpinnahIconSize = .medium
    ) -> some View {
        let isSelected = selectionGroup.isSelected(itemId)
        
        return (isSelected ? SpinnahIcons.circleSelected : SpinnahIcons.circleEmpty)
            .spinnahSelectionIcon(isSelected: isSelected, size: size)
            .onTapGesture {
                selectionGroup.toggle(item: itemId)
            }
    }
}

// MARK: - Icon with Text Combinations
public struct SpinnahIconText: View {
    let icon: Image
    let text: String
    let iconSize: SpinnahIconSize
    let spacing: CGFloat
    let alignment: HorizontalAlignment
    let accessibility: SpinnahIconAccessibility?
    
    public init(
        icon: Image,
        text: String,
        iconSize: SpinnahIconSize = .medium,
        spacing: CGFloat = SpinnahSpacing.xs,
        alignment: HorizontalAlignment = .leading,
        accessibility: SpinnahIconAccessibility? = nil
    ) {
        self.icon = icon
        self.text = text
        self.iconSize = iconSize
        self.spacing = spacing
        self.alignment = alignment
        self.accessibility = accessibility
    }
    
    public var body: some View {
        HStack(spacing: spacing) {
            if let accessibility = accessibility {
                icon.spinnahAccessibleIcon(size: iconSize, accessibility: accessibility)
            } else {
                icon.spinnahIcon(size: iconSize)
            }
            
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
    
    /// Create accessible icon with text
    static func accessible(
        icon: Image,
        text: String,
        accessibility: SpinnahIconAccessibility,
        size: SpinnahIconSize = .accessibility
    ) -> SpinnahIconText {
        SpinnahIconText(
            icon: icon,
            text: text,
            iconSize: size,
            accessibility: accessibility
        )
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
        // iOS standard sizing with accessibility support
        return self.spinnahIcon(size: size == .medium ? .accessibility : size)
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
                
                iconCategoryDemo("Layout & View Controls", icons: [
                    ("gridView", SpinnahIcons.gridView),
                    ("listView", SpinnahIcons.listView),
                    ("splitView", SpinnahIcons.splitView),
                    ("sidebarLeft", SpinnahIcons.sidebarLeft),
                    ("inspector", SpinnahIcons.inspector),
                    ("fullScreen", SpinnahIcons.fullScreen)
                ])
                
                iconCategoryDemo("Data & Filtering", icons: [
                    ("filter", SpinnahIcons.filter),
                    ("sortAscending", SpinnahIcons.sortAscending),
                    ("sortByName", SpinnahIcons.sortByName),
                    ("sortByDate", SpinnahIcons.sortByDate),
                    ("visible", SpinnahIcons.visible),
                    ("hidden", SpinnahIcons.hidden)
                ])
                
                iconCategoryDemo("Selection & Toggles", icons: [
                    ("circleEmpty", SpinnahIcons.circleEmpty),
                    ("circleSelected", SpinnahIcons.circleSelected),
                    ("squareEmpty", SpinnahIcons.squareEmpty),
                    ("squareSelected", SpinnahIcons.squareSelected),
                    ("toggle", SpinnahIcons.toggle),
                    ("sliderHorizontal", SpinnahIcons.sliderHorizontal)
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
                        iconSizeDemo("A11y", SpinnahIcons.settings, .accessibility)
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
                        SpinnahIconText.accessible(
                            icon: SpinnahIcons.favorite,
                            text: "Favorite Item",
                            accessibility: .favorite
                        )
                    }
                }
                
                // Animated Icons Demo
                AnimatedIconsDemo()
                
                // State Management Demo
                StateManagementDemo()
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

// MARK: - Animated Icons Demo View
private struct AnimatedIconsDemo: View {
    @State private var isLoading = false
    @State private var isPulsing = false
    @State private var isPressed = false
    @State private var shouldShake = false
    @State private var isToggled = false
    @State private var isFavorited = false
    @State private var isStarred = false
    @State private var isPlaying = false
    @State private var isVisible = true
    @State private var hasNotification = true
    
    var body: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // Animation Controls
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Animated Icons Demo")
                    .font(SpinnahFonts.headingM)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.sm) {
                    Button("Toggle Animations") {
                        withAnimation {
                            isLoading.toggle()
                            isPulsing.toggle()
                            isToggled.toggle()
                        }
                    }
                    .font(SpinnahFonts.labelS)
                    
                    Button("Shake") {
                        shouldShake = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            shouldShake = false
                        }
                    }
                    .font(SpinnahFonts.labelS)
                }
            }
            
            // Loading & Progress Animations
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Loading & Progress")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    VStack(spacing: 4) {
                        SpinnahIcons.loading
                            .spinnahLoadingIcon(isLoading: isLoading)
                        Text("Loading")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        SpinnahIcons.refresh
                            .spinnahRotateIcon(isRotating: isLoading)
                        Text("Refresh")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        SpinnahIcons.notification
                            .spinnahPulseIcon(isPulsing: isPulsing, color: Color.spinnahWarning)
                        Text("Pulse")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        SpinnahIcons.error
                            .spinnahShakeIcon(shouldShake: shouldShake)
                        Text("Shake")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                }
            }
            
            // Interactive State Animations
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Interactive States")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    VStack(spacing: 4) {
                        Button(action: { isFavorited.toggle() }) {
                            SpinnahIcons.heart
                                .spinnahFavoriteIcon(isFavorited: isFavorited)
                        }
                        .buttonStyle(.plain)
                        Text("Favorite")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        Button(action: { isStarred.toggle() }) {
                            SpinnahIcons.star
                                .spinnahStarIcon(isStarred: isStarred)
                        }
                        .buttonStyle(.plain)
                        Text("Star")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        Button(action: { isPlaying.toggle() }) {
                            SpinnahIcons.play
                                .spinnahPlayPauseIcon(isPlaying: isPlaying)
                        }
                        .buttonStyle(.plain)
                        Text("Play/Pause")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        Button(action: { isVisible.toggle() }) {
                            SpinnahIcons.visible
                                .spinnahVisibilityIcon(isVisible: isVisible)
                        }
                        .buttonStyle(.plain)
                        Text("Visibility")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                }
            }
            
            // Toggle & Transition Animations
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("Toggle Transitions")
                    .font(SpinnahFonts.headingS)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    VStack(spacing: 4) {
                        Button(action: {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                isToggled.toggle()
                            }
                        }) {
                            SpinnahIcons.gridView
                                .spinnahToggleIcon(
                                    isToggled: isToggled,
                                    alternateIcon: SpinnahIcons.listView
                                )
                        }
                        .buttonStyle(.plain)
                        Text("Grid/List")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        SpinnahIcons.notification
                            .spinnahNotificationIcon(hasNotification: hasNotification)
                            .onTapGesture {
                                hasNotification.toggle()
                            }
                        Text("Notification")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                    
                    VStack(spacing: 4) {
                        Button(action: {
                            isPressed = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                isPressed = false
                            }
                        }) {
                            SpinnahIcons.settings
                                .spinnahBounceIcon(isPressed: isPressed)
                        }
                        .buttonStyle(.plain)
                        Text("Bounce")
                            .font(SpinnahFonts.captionS)
                            .foregroundStyle(Color.spinnahTextSecondary)
                    }
                }
            }
        }
    }
}

// MARK: - State Management Demo View
private struct StateManagementDemo: View {
    @StateObject private var iconState = SpinnahIconState()
    @StateObject private var selectionGroup = SpinnahIconSelectionGroup(maxSelections: 3)
    
    private let items = ["item1", "item2", "item3", "item4", "item5"]
    
    var body: some View {
        VStack(spacing: SpinnahSpacing.lg) {
            // State Management Demo
            VStack(alignment: .leading, spacing: SpinnahSpacing.sm) {
                Text("State Management Demo")
                    .font(SpinnahFonts.headingM)
                    .foregroundStyle(Color.spinnahPrimary)
                
                HStack(spacing: SpinnahSpacing.md) {
                    Button("Toggle State") {
                        iconState.toggle()
                    }
                    .font(SpinnahFonts.labelS)
                    
                    Button("Reset State") {
                        iconState.reset()
                    }
                    .font(SpinnahFonts.labelS)
                    
                    Button("Select All") {
                        selectionGroup.selectAll(items)
                    }
                    .font(SpinnahFonts.labelS)
                    
                    Button("Deselect All") {
                        selectionGroup.deselectAll()
                    }
                    .font(SpinnahFonts.labelS)
                }
                
                VStack(spacing: 8) {
                    Text("Stateful Icon:")
                    SpinnahIcons.settings
                        .spinnahStatefulIcon(state: iconState)
                    
                    Text("Selection Group (max 3):")
                    HStack(spacing: SpinnahSpacing.sm) {
                        ForEach(items, id: \.self) { item in
                            SpinnahIcons.circleEmpty
                                .spinnahGroupSelectionIcon(
                                    itemId: item,
                                    selectionGroup: selectionGroup
                                )
                        }
                    }
                    
                    Text("Selected: \(selectionGroup.selectedItems.count)/\(items.count)")
                        .font(SpinnahFonts.captionL)
                        .foregroundStyle(Color.spinnahTextSecondary)
                }
            }
        }
    }
}
#endif
