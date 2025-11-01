# AI Agent Instructions - Famli Web Application (Rails)

## Technology Stack

- **Framework**: Ruby on Rails 8.1.1
- **Database**: PostgreSQL
- **Frontend**: Hotwire (Turbo + Stimulus), Tailwind CSS, Importmap
- **Testing**: RSpec (preferred over MiniTest)
- **Server**: Puma
- **Asset Pipeline**: Propshaft
- **Caching**: Solid Cache, Solid Queue, Solid Cable

## Rails-Specific Guidelines

### Code Style

- Follow Rails conventions and best practices
- Use Rails 8.1 features and idioms
- Follow **Omakase Ruby styling** (rubocop-rails-omakase)
- Run `rubocop` before committing code
- Keep controllers thin, move business logic to models or services

### Database & Models

- **Users are soft deleted** using the discard gem - never hard delete users unless legally required
- Use migrations for all schema changes
- Include proper indexes for foreign keys and frequently queried columns
- Add database constraints where appropriate
- Write model validations and callbacks
- Use Active Record associations properly

### Testing with RSpec

- **Always use RSpec** for tests (not MiniTest)
- Write request specs for API endpoints
- Write system specs for user-facing features
- Write model specs for business logic
- Use factories (FactoryBot) for test data
- Mock external services in tests
- Test edge cases and error conditions

### Frontend (Hotwire + Tailwind)

- Use Turbo Frames for partial page updates
- Use Turbo Streams for real-time updates
- Write Stimulus controllers for interactive behavior
- Use Tailwind utility classes for styling
- Keep JavaScript minimal and progressive
- Ensure features work without JavaScript when possible

### API Development

- Build RESTful APIs following Rails conventions
- Use Jbuilder for JSON responses
- Version APIs when making breaking changes
- Document API endpoints thoroughly
- Handle errors gracefully with proper status codes
- Ensure mobile apps are considered in API design

### Security

- Use Strong Parameters for mass assignment protection
- Protect against CSRF attacks (Rails default)
- Sanitize user input to prevent XSS
- Use parameterized queries to prevent SQL injection
- Keep gems updated (run `bundle audit` regularly)
- Run `brakeman` for security scanning
- **Never hard delete users** - use soft deletion with discard gem

### Performance

- Use database indexes appropriately
- Implement caching with Solid Cache where needed
- Use background jobs with Solid Queue for long-running tasks
- Optimize N+1 queries with includes/eager loading
- Monitor query performance in development

### File Structure

- Place custom business logic in `app/services/`
- Use concerns for shared model/controller behavior
- Keep views organized by resource
- Use partials to avoid duplication
- Store configuration in `config/`

### Dependencies & Gems

- Review new gem dependencies carefully
- Keep Gemfile organized and commented
- Run `bundle audit` to check for vulnerabilities
- Update gems regularly but test thoroughly

### Development Workflow

1. Create feature branch from main
2. Write failing tests first (TDD)
3. Implement feature
4. Ensure all tests pass: `bundle exec rspec`
5. Run linter: `bundle exec rubocop`
6. Run security checks: `bundle exec brakeman`
7. Review changes before committing

### Commands Reference

```bash
# Run tests
bundle exec rspec

# Run linter
bundle exec rubocop

# Run security scanner
bundle exec brakeman

# Run security audit
bundle exec bundler-audit

# Start development server
bin/dev

# Console
bin/rails console

# Database migrations
bin/rails db:migrate
bin/rails db:rollback

# Database setup
bin/rails db:setup
```

### Important Business Rules

- **When uploading a new game, the default selected language should be the user's language** rather than all languages appearing selected
- Users must never be hard deleted (use discard gem for soft deletion)

### Active Storage

- Use Active Storage for file uploads
- Process images with image_processing gem
- Store files appropriately (local in dev, cloud in prod)
- Add validations for file types and sizes

### Background Jobs

- Use Solid Queue for background processing
- Keep jobs small and focused
- Make jobs idempotent when possible
- Handle job failures gracefully

### Real-Time Features

- Use Solid Cable for WebSocket connections
- Implement real-time updates with Turbo Streams
- Consider scalability for real-time features

## Before Marking Tasks Complete

1. ✅ All RSpec tests pass
2. ✅ Rubocop passes with no offenses
3. ✅ Brakeman security check passes
4. ✅ Manual testing completed
5. ✅ Documentation updated
6. ✅ Migration runs successfully (if applicable)
7. ✅ No hard-coded secrets or credentials
