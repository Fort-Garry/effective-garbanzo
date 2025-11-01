# Contributing to Famli

Thank you for your interest in contributing to Famli! We welcome contributions from the community.

## Important: Contributor License Agreement (CLA)

**Before we can accept your contribution, you must sign our Contributor License Agreement (CLA).**

### What is a CLA?

A Contributor License Agreement is a legal document that grants the copyright holder (Dieter Lunn) a perpetual, irrevocable license to use, modify, and distribute your contributions. This allows us to:

- Maintain flexibility in how the project is licensed and monetized
- Protect the project from legal challenges
- Ensure all contributions can be used in commercial contexts

### Key Points

- **This is a commercial project**: Famli is monetized through its web service
- **No contributor compensation**: Unless explicitly agreed upon in a separate written agreement, contributors will not receive financial compensation
- **You retain copyright**: You keep copyright to your contributions, but grant us a broad license
- **Transparency**: We want to be upfront about how contributions are used

### How to Sign the CLA

We use **CLA Assistant** to manage the CLA signing process:

1. Submit a pull request to this repository
2. CLA Assistant will automatically comment on your PR
3. Click the link to review and sign the CLA
4. Once signed, your PR can be reviewed and merged

CLA Assistant URL: <https://cla-assistant.io/Fort-Garry/effective-garbanzo>

## Contribution Guidelines

### Getting Started

1. Fork the repository
2. Create a feature branch from `main`
3. Make your changes following our coding standards
4. Write/update tests as needed
5. Ensure all tests pass
6. Sign the CLA when prompted
7. Submit a pull request

### Code Standards

#### Web Application (Rails)

- Follow Rails conventions and best practices
- Use RSpec for tests (not MiniTest)
- Run `bundle exec rubocop` for linting
- Run `bundle exec rspec` for tests
- Run `bundle exec brakeman` for security checks
- See `web/AGENTS.md` for detailed guidelines

#### iOS Application

- Follow Swift coding conventions
- Write unit and UI tests
- Run tests with ⌘+U in Xcode
- See `ios/AGENTS.md` for detailed guidelines

#### Android Application

- Follow Kotlin coding conventions
- Run `./gradlew test` for unit tests
- Run `./gradlew ktlintCheck` for linting (if configured)
- See `android/AGENTS.md` for detailed guidelines

### General Guidelines

- Write clear, descriptive commit messages
- Keep pull requests focused on a single feature or fix
- Add comments for complex logic
- Update documentation when needed
- Follow security best practices

### Testing Requirements

All contributions must include tests:

- **Web**: RSpec tests for new features and bug fixes
- **iOS**: Unit tests and UI tests as appropriate
- **Android**: Unit tests and instrumentation tests as appropriate

### Pull Request Process

1. Ensure your code follows the project's coding standards
2. Run all tests and ensure they pass
3. Run linters and security checks
4. Update documentation as needed
5. Submit your PR with a clear description
6. Sign the CLA when CLA Assistant prompts you
7. Wait for review and address any feedback

### What We're Looking For

- Bug fixes
- Feature improvements
- Documentation improvements
- Test coverage improvements
- Performance optimizations
- Accessibility improvements

### What We Can't Accept

- Changes that violate our security policies
- Changes that hard-delete users without legal requirements
- Changes without tests
- Changes that break existing functionality
- Unsigned CLA

## Questions?

If you have questions about contributing or the CLA, please open an issue or contact:

**Dieter Lunn**  
Email: <dieter@dieterlunn.ca>

## License

By contributing to this project, you agree that your contributions will be licensed under the GNU Affero General Public License v3.0-only (AGPL-3.0-only), subject to the terms of the Contributor License Agreement.

See `LICENSE` and `NOTICE` for more details.
