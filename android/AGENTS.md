# AI Agent Instructions - Famli Android Application

## Technology Stack

- **Platform**: Android
- **Language**: Kotlin (modern Android development standard)
- **Build System**: Gradle (Kotlin DSL)
- **Development Tool**: Android Studio
- **Architecture**: Follow existing patterns in the codebase

## Android-Specific Guidelines

### Code Style

- Follow Kotlin coding conventions
- Use Kotlin idioms (data classes, sealed classes, extension functions)
- Follow Android's architecture best practices
- Use ktlint or Android Studio formatter for code style
- Write clear, self-documenting code

### Architecture

- Follow recommended Android architecture (MVVM, MVI, or existing pattern)
- Use Android Architecture Components (ViewModel, LiveData/Flow, Room)
- Keep Activities and Fragments lightweight
- Separate business logic from UI code
- Use dependency injection (Hilt/Dagger recommended)
- Follow single responsibility principle

### UI Development

- Use Jetpack Compose for new features (if project uses Compose)
- Use XML layouts properly if that's the project standard
- Follow Material Design guidelines
- Support different screen sizes and densities
- Implement proper accessibility (TalkBack, content descriptions)
- Test on various device configurations
- Handle configuration changes (rotation, etc.)

### Networking & API Integration

- Use Retrofit, Ktor, or modern networking libraries
- Handle network errors gracefully with proper user messaging
- Implement request/response logging for debugging
- Use OkHttp for HTTP client
- Consider offline-first architecture
- **Ensure compatibility with backend API** (see web/AGENTS.md)

### Data Management

- Use Room for local database storage
- Use DataStore for key-value storage (prefer over SharedPreferences)
- Implement proper data migration strategies
- Handle data conflicts and synchronization
- Encrypt sensitive data using Android Keystore
- Clear user data on logout

### Testing

- Write unit tests for business logic and ViewModels
- Write instrumentation tests for UI flows
- Use JUnit, Mockito/MockK for testing
- Write integration tests for critical flows
- Mock network requests in tests
- Test edge cases and error conditions
- Aim for good test coverage

### Security

- Store sensitive data in Android Keystore
- Use HTTPS for all network connections
- Implement certificate pinning if required
- Validate and sanitize all user input
- Follow OWASP Mobile Security guidelines
- Use ProGuard/R8 for code obfuscation
- Handle authentication tokens securely

### Performance

- Optimize image loading with Glide or Coil
- Use RecyclerView efficiently with ViewHolder pattern
- Profile memory usage with Android Profiler
- Minimize battery drain
- Optimize app startup time
- Use WorkManager for background tasks
- Implement pagination for large lists

### Error Handling

- Provide user-friendly error messages
- Log errors with proper context
- Implement retry logic for transient failures
- Handle edge cases gracefully
- Catch and handle exceptions appropriately
- Don't crash on unexpected data

### User Experience

- Show loading indicators for async operations
- Implement pull-to-refresh where appropriate
- Add haptic feedback for important actions
- Show empty states with helpful messages
- Cache data for offline viewing when possible
- Use proper transitions and animations

### Dependencies

- Manage dependencies in `build.gradle.kts` files
- Use version catalogs for dependency management
- Keep dependencies up to date
- Review third-party libraries for security
- Document why each dependency is needed
- Avoid dependency bloat

### Gradle & Build Configuration

- Keep build files organized and clean
- Use buildSrc or version catalogs for dependency versions
- Configure ProGuard/R8 rules properly
- Set up proper build variants (debug, release, etc.)
- Keep Gradle wrapper up to date

### Version Control

- Exclude build artifacts and IDE-specific files
- Don't commit keystore files or secrets
- Keep .gitignore up to date
- Commit meaningful changes with clear messages

### Development Workflow

1. Create feature branch
2. Write tests for new functionality
3. Implement feature following architecture patterns
4. Run unit tests: `./gradlew test`
5. Run instrumentation tests: `./gradlew connectedAndroidTest`
6. Run linter: `./gradlew ktlintCheck`
7. Review code for issues
8. Update documentation

### Commands Reference

```bash
# Build the project
./gradlew build

# Run unit tests
./gradlew test

# Run instrumentation tests
./gradlew connectedAndroidTest

# Run linter (if ktlint configured)
./gradlew ktlintCheck

# Clean build
./gradlew clean

# Install debug build
./gradlew installDebug

# Check for dependency updates
./gradlew dependencyUpdates
```

### API Integration

- Follow API contracts defined by backend team
- Handle API versioning properly
- Test with various API responses (success, error, empty)
- Document API endpoint usage
- Report API issues to backend team
- Use proper serialization (Moshi, kotlinx.serialization)

### Play Store Guidelines

- Follow Google Play Store policies
- Test in-app purchases thoroughly if implemented
- Implement proper privacy policies
- Handle app permissions properly
- Test subscription flows if applicable
- Support Android version range appropriately

### Localization & Internationalization

- Use string resources for all user-facing text
- Support multiple languages if required
- Test with different locales
- Handle right-to-left languages if needed
- Use locale-appropriate date/time formats
- Extract hardcoded strings to resources

### Push Notifications

- Use Firebase Cloud Messaging (FCM) or alternative
- Request notification permission appropriately (Android 13+)
- Handle notification channels properly
- Test different notification scenarios
- Implement deep linking from notifications
- Handle background notification processing

### Permissions

- Request permissions at appropriate times
- Handle permission denial gracefully
- Use AndroidX Activity Result APIs
- Explain why permissions are needed
- Follow least privilege principle

### Lifecycle Management

- Handle Android lifecycle properly
- Use lifecycle-aware components
- Avoid memory leaks
- Clean up resources in onDestroy/onCleared
- Test configuration changes

### Debugging

- Use Android Studio debugging tools
- Implement proper logging (Timber recommended)
- Use Logcat effectively
- Profile with Android Profiler
- Test on real devices, not just emulators
- Use layout inspector for UI debugging

## Before Marking Tasks Complete

1. ✅ All unit tests pass (`./gradlew test`)
2. ✅ Instrumentation tests pass
3. ✅ Code builds without warnings
4. ✅ Linter passes (if configured)
5. ✅ Tested on multiple device sizes/Android versions
6. ✅ No memory leaks
7. ✅ ProGuard/R8 rules updated if needed
8. ✅ Documentation updated
9. ✅ API integration verified with backend
