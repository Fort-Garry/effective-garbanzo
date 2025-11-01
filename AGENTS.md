# AI Agent Instructions - Famli Project

## Project Overview

This is the Famli project repository containing:

- **web/**: Ruby on Rails web application
- **ios/**: iOS mobile application
- **android/**: Android mobile application

## General Guidelines

### Code Quality

- Write clean, maintainable, and well-documented code
- Follow existing code patterns and conventions in each subproject
- Add comments for complex logic or business rules
- Keep functions/methods focused and single-purpose

### Testing

- **Use RSpec** for Ruby/Rails tests (not MiniTest)
- Write tests before making significant changes
- Ensure all tests pass before considering a task complete
- Include both unit and integration tests where appropriate

### Version Control

- Make atomic, focused commits
- Write clear, descriptive commit messages
- Review changes before committing
- Use feature branches for new development

### Security & Privacy

- **Users are soft deleted** using the discard gem instead of being outright deleted, unless required by law
- Never commit secrets or sensitive data
- Use environment variables for configuration
- Follow security best practices for each platform

### Documentation

- Update relevant documentation when making changes
- Document API endpoints and interfaces
- Include setup instructions for new features
- Keep README files current

## Cross-Platform Considerations

- Ensure API changes are compatible with mobile clients
- Consider mobile-first design principles
- Maintain consistent data models across platforms
- Test integrations between web and mobile apps

## Communication

- Ask for clarification when requirements are unclear
- Explain significant architectural decisions
- Report any blockers or concerns promptly
- Provide context for non-obvious code changes

## Before Completing Tasks

1. Run all relevant test suites
2. Run linters and type checkers if available
3. Verify changes work as expected
4. Review code for potential issues
5. Update documentation as needed

## Project-Specific Instructions

For detailed instructions specific to each platform:

- See `web/AGENTS.md` for Rails web application guidelines
- See `ios/AGENTS.md` for iOS application guidelines
- See `android/AGENTS.md` for Android application guidelines
