# Famli

A cross-platform application suite consisting of a web application and mobile apps for iOS and Android.

[![CLA assistant](https://cla-assistant.io/readme/badge/Fort-Garry/effective-garbanzo)](https://cla-assistant.io/Fort-Garry/effective-garbanzo)

## Project Structure

This repository is organized as a monorepo containing three main projects:

```text
effective-garbanzo/
├── web/        # Ruby on Rails web application
├── ios/        # iOS mobile application
├── android/    # Android mobile application
└── AGENTS.md   # AI agent instructions for the entire project
```

## Technology Stack

### Web Application Stack

- **Framework**: Ruby on Rails 8.1.1
- **Database**: PostgreSQL
- **Frontend**: Hotwire (Turbo + Stimulus), Tailwind CSS
- **Testing**: RSpec
- **Server**: Puma
- **Caching**: Solid Cache, Solid Queue, Solid Cable

### iOS Application Stack

- **Platform**: iOS
- **Language**: Swift
- **IDE**: Xcode

### Android Application Stack

- **Platform**: Android
- **Language**: Kotlin
- **Build System**: Gradle (Kotlin DSL)
- **IDE**: Android Studio

## Prerequisites

### Web Application

- Ruby (see `.ruby-version` in `web/` directory)
- PostgreSQL
- Node.js (for asset compilation)

### iOS Application

- macOS
- Xcode (latest stable version)
- CocoaPods or Swift Package Manager (depending on project setup)

### Android Application

- Android Studio
- JDK 11 or higher
- Android SDK

## Getting Started

### Web Application Setup

```bash
cd web

# Install dependencies
bundle install

# Setup database
bin/rails db:setup

# Run migrations
bin/rails db:migrate

# Start the development server
bin/dev
```

The web application will be available at `http://localhost:3000`

#### Running Web Tests

```bash
cd web

# Run all tests
bundle exec rspec

# Run linter
bundle exec rubocop

# Run security scanner
bundle exec brakeman

# Run security audit
bundle exec bundler-audit
```

### iOS Application Setup

```bash
cd ios

# Open the project in Xcode
open Famli.xcodeproj
# or if using workspace
# open Famli.xcworkspace
```

1. Select your target device or simulator
2. Build and run the project (⌘ + R)
3. Run tests (⌘ + U)

### Android Application Setup

```bash
cd android

# Build the project
./gradlew build

# Install debug build on connected device
./gradlew installDebug
```

Or open the `android/` directory in Android Studio and use the IDE to build and run.

#### Running Android Tests

```bash
cd android

# Run unit tests
./gradlew test

# Run instrumentation tests
./gradlew connectedAndroidTest
```

## Development Guidelines

### General Principles

- Write clean, maintainable, and well-documented code
- Follow existing code patterns and conventions in each subproject
- Write tests before making significant changes
- Ensure all tests pass before committing
- Use meaningful commit messages

### Color Scheme

| Role | Light Mode | Dark Mode | Description |
| --- | --- | --- | --- |
| **Primary** | ![](https://placehold.co/10x10/F57B8A/F57B8A.png) `#F57B8A` (oklch 0.72 0.17 25) | ![](https://placehold.co/10x10/FF92A2/FF92A2.png) `#FF92A2` | Joyful rose pink — main brand color for buttons, headers |
| **Secondary** | ![](https://placehold.co/10x10/FFC94C/FFC94C.png) `#FFC94C` (oklch 0.84 0.14 90) | ![](https://placehold.co/10x10/E0B440/E0B440.png) `#E0B440` | Warm sunlight yellow for highlights, icons, and cheerful accents |
| **Accent** | ![](https://placehold.co/10x10/7AD8B4/7AD8B4.png) `#7AD8B4` (oklch 0.8 0.13 160) | ![](https://placehold.co/10x10/64B999/64B999.png) `#64B999` | Soothing mint to balance the energy of pink and yellow |
| **Background** | ![](https://placehold.co/10x10/FFF9F8/FFF9F8.png) `#FFF9F8` | ![](https://placehold.co/10x10/1A1A1A/1A1A1A.png) `#1A1A1A` | Neutral base, warm tint for a cozy interface |
| **Surface** | ![](https://placehold.co/10x10/FFF1F3/FFF1F3.png) `#FFF1F3` | ![](https://placehold.co/10x10/2A2324/2A2324.png) `#2A2324` | Slightly tinted panels and cards for visual depth |
| **Text / On-Surface** | ![](https://placehold.co/10x10/2B1D1C/2B1D1C.png) `#2B1D1C` | ![](https://placehold.co/10x10/FDF5F5/FDF5F5.png) `#FDF5F5` | Friendly contrast, easy on the eyes |
| **Info / Trust Blue** | ![](https://placehold.co/10x10/7DBCF5/7DBCF5.png) `#7DBCF5` | ![](https://placehold.co/10x10/5A9DE6/5A9DE6.png) `#5A9DE6` | For notifications or trust-related elements |
| **Success / Green** | ![](https://placehold.co/10x10/9CD68E/9CD68E.png) `#9CD68E` | ![](https://placehold.co/10x10/7EB972/7EB972.png) `#7EB972` | For positive actions (upload complete, message sent) |

### Security & Privacy

- **Users are soft deleted** using the discard gem (Rails) - never hard delete users unless legally required
- Never commit secrets or sensitive data
- Use environment variables for configuration
- Follow security best practices for each platform

### Testing

- **Use RSpec** for Ruby/Rails tests (not MiniTest)
- Write unit tests for business logic
- Write integration/system tests for user flows
- Test edge cases and error conditions

### Cross-Platform Considerations

- Ensure API changes are compatible with all mobile clients
- Maintain consistent data models across platforms
- Test integrations between web and mobile apps
- Document API changes thoroughly

## Documentation

For detailed platform-specific guidelines, see:

- [`web/AGENTS.md`](web/AGENTS.md) - Rails web application guidelines
- [`ios/AGENTS.md`](ios/AGENTS.md) - iOS application guidelines
- [`android/AGENTS.md`](android/AGENTS.md) - Android application guidelines
- [`AGENTS.md`](AGENTS.md) - Common instructions for all projects

## Database

The Rails application uses PostgreSQL with the following databases:

- **Development**: `famli_development`
- **Test**: `famli_test`
- **Production**: `famli_production` (with separate databases for cache, queue, and cable)

## Deployment

The web application supports deployment via:

- Kamal (Docker-based deployment)
- Traditional Rails deployment methods

See the `web/` directory for deployment configuration.

## Contributing

Before submitting a PR, you must sign the Contributor License Agreement (CLA) via CLA Assistant:
<https://cla-assistant.io/Fort-Garry/effective-garbanzo>

1. Create a feature branch from `main`
2. Make your changes following the guidelines in `AGENTS.md`
3. Write/update tests as needed
4. Ensure all tests pass
5. Run linters and security checks
6. Submit a pull request with a clear description
7. Ensure the CLA check passes on your PR

## License

GNU Affero General Public License v3.0-only (AGPL-3.0-only). See `LICENSE` and `NOTICE`.
Contributions require a signed Contributor License Agreement (see `CONTRIBUTING.md`).

## Contact

Dieter <dieter@dieterlunn.ca>
