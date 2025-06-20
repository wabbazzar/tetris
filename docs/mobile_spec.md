# Tetris Turbo Mobile - Mobile-First Specification

## Project Overview
Adapt the existing Tetris Turbo game for mobile-first design, specifically optimized for iPhone and mobile devices. Transform the desktop keyboard-controlled experience into an intuitive touch-based mobile gaming experience while maintaining the Tron aesthetic and game performance.

## Mobile-Specific Requirements

### Target Devices
- **Primary**: iPhone (iOS Safari)
- **Secondary**: Android devices (Chrome Mobile)
- **Screen Sizes**: 375px - 428px width (iPhone SE to iPhone Pro Max)
- **Orientation**: Portrait-first design
- **Performance**: 60 FPS on iPhone 8+ and equivalent Android devices

### Touch Control System

#### Gesture Controls (Primary Interface)
- **Horizontal Swipe**: Move piece left/right
  - Minimum swipe distance: 30px
  - Velocity threshold for responsiveness
  - Visual feedback during swipe
- **Vertical Swipe Down**: Soft drop (accelerated falling)
  - Continuous soft drop while finger held down
  - Smooth acceleration curve
- **Tap**: Rotate piece clockwise
  - Single tap anywhere on game board
  - Visual rotation feedback
- **Double Tap**: Hard drop (instant placement)
  - Quick double-tap recognition
  - Immediate drop with visual trail effect
- **Long Press**: Pause/unpause game
  - 500ms press duration
  - Haptic feedback confirmation

#### Touch Button Controls (Secondary Interface)
- **Rotate Button**: Large, easily accessible rotation control
- **Drop Button**: Instant hard drop
- **Pause Button**: Game state control
- **Restart Button**: New game (when game over)
- **Settings Button**: Control preferences toggle

### Mobile UX Design

#### Layout Adaptations
- **Game Board**: 
  - Scale to 85% of screen width in portrait
  - Maintain aspect ratio (1:2 ratio)
  - Center horizontally with equal margins
- **Score/Level Display**:
  - Move to top of screen above game board
  - Horizontal layout: Score | Level | Lines
  - Larger, more readable fonts
- **Control Area**:
  - Bottom third of screen
  - Primary gesture area for game board
  - Secondary button controls below
- **Next Piece Preview**:
  - Top-right corner, smaller size
  - Optional in minimal UI mode

#### Visual Feedback System
- **Touch Indicators**: 
  - Subtle glow effect where finger touches
  - Gesture trail visualization
  - Button press animations
- **Haptic Feedback**:
  - Piece placement vibration
  - Line clear celebration vibration
  - Collision/rotation failure light buzz
- **Audio Considerations**:
  - Respect iOS silent mode
  - Optional sound effects toggle
  - Brief audio cues for actions

### Progressive Web App (PWA) Features

#### App-Like Experience
- **Web App Manifest**: Add to home screen capability
- **Service Worker**: Offline gameplay support
- **App Icons**: iOS/Android compatible icons
- **Splash Screen**: Loading experience
- **Status Bar**: Immersive full-screen mode

#### Performance Optimizations
- **Reduced DOM Manipulation**: 
  - Batch all touch-related updates
  - Optimize rendering for mobile browsers
  - Minimize reflows and repaints
- **Touch Event Optimization**:
  - Passive event listeners where possible
  - Debounced gesture recognition
  - Efficient touch coordinate tracking
- **Memory Management**:
  - Clean up touch event listeners
  - Optimize piece rendering for mobile
  - Reduce JavaScript heap usage

### Responsive Design Implementation

#### Breakpoint Strategy
- **Small Mobile**: 320px - 374px (iPhone SE)
- **Standard Mobile**: 375px - 413px (iPhone 12/13)
- **Large Mobile**: 414px - 428px (iPhone Pro Max)
- **Tablet Portrait**: 768px+ (fallback to desktop layout)

#### CSS Adaptations
- **Flexible Grid System**: CSS Grid for responsive game board
- **Touch-Friendly Sizing**: 
  - Minimum 44px touch targets
  - Adequate spacing between interactive elements
  - Larger game cells for better visibility
- **Typography Scale**: 
  - Responsive font sizes using clamp()
  - High contrast for mobile readability
  - System font stack for performance

### Mobile-Specific Game Features

#### Accessibility Enhancements
- **High Contrast Mode**: Enhanced visibility option
- **Larger Touch Targets**: Accessibility-friendly controls
- **Voice Over Support**: Screen reader compatibility
- **Reduced Motion**: Respect user motion preferences

#### Game State Persistence
- **Local Storage**: Save game progress
- **Auto-Pause**: Handle phone calls/notifications
- **Background Handling**: Pause when app loses focus
- **Resume Capability**: Restore game state on return

#### Social Features (Optional)
- **Score Sharing**: Share achievements via native share
- **Screenshot Capture**: Game state image generation
- **Leaderboard**: Local high score tracking

## Technical Implementation Requirements

### HTML Structure Updates
- **Viewport Configuration**: Proper mobile viewport settings
- **Touch Action CSS**: Prevent default touch behaviors
- **Meta Tags**: iOS-specific web app configurations
- **Semantic Markup**: Screen reader and accessibility support

### CSS Mobile-First Approach
- **Mobile Base Styles**: Start with mobile layout
- **Progressive Enhancement**: Desktop as enhancement
- **Flexbox/Grid**: Modern layout techniques
- **CSS Custom Properties**: Dynamic sizing and theming

### JavaScript Touch Events
- **Touch Event Handlers**: 
  - touchstart, touchmove, touchend
  - Gesture recognition algorithms
  - Multi-touch prevention
- **Performance Monitoring**:
  - Frame rate tracking on mobile
  - Touch responsiveness metrics
  - Memory usage optimization

### Testing Requirements
- **Device Testing**: Physical device validation
- **Cross-Browser**: Safari, Chrome Mobile, Samsung Internet
- **Performance Testing**: 60 FPS maintenance
- **Accessibility Testing**: VoiceOver, TalkBack compatibility
- **Network Conditions**: Offline capability testing

## Success Criteria

### Functional Requirements
- All original Tetris mechanics work via touch
- Smooth 60 FPS performance on target devices
- Intuitive gesture recognition (< 50ms response time)
- Proper game state management (pause/resume)
- PWA installation capability
- Offline gameplay support

### User Experience Requirements
- Intuitive controls (< 30 seconds to learn)
- Responsive visual feedback (immediate touch response)
- No accidental inputs or gestures
- Comfortable extended play sessions
- Respect for device settings (silent mode, motion)

### Performance Requirements
- **Load Time**: < 3 seconds on 3G connection
- **Frame Rate**: Consistent 60 FPS during gameplay
- **Touch Latency**: < 50ms input to visual response
- **Battery Usage**: Efficient power consumption
- **Memory Usage**: < 50MB RAM footprint

### Visual Design Requirements
- Maintain Tron aesthetic on mobile
- High contrast for outdoor visibility
- Readable typography at all sizes
- Consistent visual feedback system
- Smooth animations and transitions

## Development Priorities

### Must-Have (Core Mobile Functionality)
1. Touch gesture system (swipe, tap, double-tap)
2. Responsive layout for portrait mobile
3. Touch-friendly UI controls
4. Performance optimization for 60 FPS
5. Basic PWA features (manifest, icons)

### Should-Have (Enhanced Mobile UX)
1. Haptic feedback integration
2. Advanced gesture recognition
3. Game state persistence
4. Accessibility enhancements
5. Cross-device testing validation

### Nice-to-Have (Premium Mobile Features)
1. Social sharing capabilities
2. Advanced PWA features (offline)
3. High contrast/accessibility modes
4. Voice control integration
5. Advanced haptic patterns

## Technical Constraints

### Device Limitations
- **iOS Safari**: WebKit limitations and quirks
- **Memory**: Limited RAM on older devices
- **CPU**: Throttling during extended gameplay
- **Battery**: Power-efficient rendering required
- **Network**: Offline-first approach

### Browser Compatibility
- **iOS Safari**: Primary target (iOS 13+)
- **Chrome Mobile**: Android compatibility
- **Samsung Internet**: Samsung device optimization
- **Progressive Enhancement**: Fallback for older browsers

This mobile specification maintains the core Tetris experience while transforming it into a modern, touch-first mobile gaming experience optimized for iPhone and mobile devices.
