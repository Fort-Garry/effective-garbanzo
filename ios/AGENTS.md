# AI Agent Instructions - Famli iOS Application

## Technology Stack

- **Platform**: iOS
- **Language**: Swift (assumed based on modern iOS development)
- **Development Tool**: Xcode
- **Architecture**: Follow existing patterns in the codebase

## iOS-Specific Guidelines

### Code Style

- Follow Swift best practices and conventions
- Use Swift's modern concurrency features (async/await)
- Follow Apple's Human Interface Guidelines
- Use SwiftLint for code style enforcement (if configured)
- Write self-documenting code with clear naming

### Architecture

- Follow the existing architecture pattern (MVC, MVVM, or other)
- Keep view controllers focused and lightweight
- Separate business logic from UI code
- Use dependency injection for testability
- Create reusable components

### UI Development

- Use SwiftUI for new features (if project uses SwiftUI)
- Use UIKit properly if that's the project standard
- Support different screen sizes and orientations
- Implement proper accessibility features (VoiceOver, Dynamic Type)
- Follow iOS design patterns and conventions
- Test on multiple device sizes

### Networking & API Integration

- Use URLSession or modern networking libraries
- Handle network errors gracefully
- Implement proper error messages for users
- Add request/response logging for debugging
- Consider offline functionality
- **Ensure compatibility with backend API** (see web/AGENTS.md)

### Data Management

- Use Core Data, SwiftData, or other persistence layer consistently
- Implement proper data migration strategies
- Handle data conflicts and sync issues
- Encrypt sensitive data
- Clear user data on logout

### Testing

- Write unit tests for business logic
- Write UI tests for critical user flows
- Use XCTest framework
- Mock network requests in tests
- Test edge cases and error conditions
- Aim for reasonable test coverage

### Security

- Store sensitive data in Keychain
- Use secure network connections (HTTPS)
- Implement certificate pinning if required
- Validate all user input
- Follow OWASP Mobile Security guidelines
- Handle authentication tokens securely

### Performance

- Optimize image loading and caching
- Use lazy loading for lists and collections
- Profile memory usage regularly
- Minimize battery drain
- Optimize startup time
- Handle background tasks efficiently

### Error Handling

- Provide user-friendly error messages
- Log errors for debugging
- Implement retry logic for transient failures
- Handle edge cases gracefully
- Don't crash on unexpected data

### User Experience

- Provide loading indicators for async operations
- Implement pull-to-refresh where appropriate
- Add haptic feedback for important actions
- Show empty states with helpful messages
- Cache data for offline viewing when possible

### Dependencies

- Use Swift Package Manager, CocoaPods, or Carthage consistently
- Keep dependencies up to date
- Review third-party libraries for security issues
- Document why each dependency is needed
- Minimize dependency bloat

### Version Control

- Exclude build artifacts and user-specific files
- Don't commit certificates or provisioning profiles
- Keep .gitignore up to date
- Write descriptive commit messages

### Development Workflow

1. Create feature branch
2. Write tests for new functionality
3. Implement feature
4. Test on simulator and real devices
5. Run tests: `⌘ + U` in Xcode
6. Review code for issues
7. Update documentation

### Commands Reference

```bash
# Build the project
xcodebuild -workspace Famli.xcworkspace -scheme Famli build

# Run tests
xcodebuild test -workspace Famli.xcworkspace -scheme Famli -destination 'platform=iOS Simulator,name=iPhone 15'

# SwiftLint (if configured)
swiftlint
```

### API Integration

- Follow API contracts defined by backend team
- Handle API versioning properly
- Test with different API responses (success, error, empty)
- Document API endpoint usage
- Report API issues to backend team

### App Store Guidelines

- Follow App Store Review Guidelines
- Test IAP (In-App Purchases) thoroughly if implemented
- Implement proper privacy policies
- Handle App Tracking Transparency (ATT)
- Test subscription flows if applicable

### Localization & Internationalization

- Use NSLocalizedString for all user-facing text
- Support multiple languages if required
- Test with different locales
- Handle right-to-left languages if needed
- Use locale-appropriate date/time formats

### Push Notifications

- Request permission appropriately
- Handle notification permissions gracefully
- Test different notification scenarios
- Implement deep linking from notifications
- Handle background notification processing

### Debugging

- Use Xcode's debugging tools effectively
- Implement proper logging (os_log)
- Use breakpoints and LLDB commands
- Profile with Instruments
- Test on real devices, not just simulators

## Before Marking Tasks Complete

1. ✅ All unit tests pass
2. ✅ UI tests pass for affected flows
3. ✅ Code builds without warnings
4. ✅ Tested on multiple device sizes/iOS versions
5. ✅ No memory leaks or retain cycles
6. ✅ SwiftLint passes (if configured)
7. ✅ Documentation updated
8. ✅ API integration verified with backend
