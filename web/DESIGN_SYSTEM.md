# 🎨 Famli Design System - ViewComponent Edition

A comprehensive design system built with ViewComponent for the Famli Rails application, inspired by Magic UI and following the Famli Brand Guidelines.

## 📋 Table of Contents

- [Overview](#-overview)
- [Installation](#-installation)
- [Core Components](#-core-components)
- [Animated Components](#-animated-components)
- [Background Components](#-background-components)
- [Text Animation Components](#-text-animation-components)
- [Layout Components](#-layout-components)
- [Design Tokens](#-design-tokens)
- [Usage Examples](#-usage-examples)

## 🌟 Overview

This design system provides:

- **Type-safe components** using Sorbet type checking
- **Brand-consistent styling** following Famli's playful, warm aesthetic
- **Smooth animations** inspired by Magic UI
- **Responsive layouts** with Tailwind CSS
- **Interactive elements** powered by Stimulus

### Brand Colors

The system uses Famli's color palette defined in OKLCH color space:

- **Primary (Rose)**: `#F57B8A` / `#FF92A2` - Joyful, warm CTAs
- **Secondary (Yellow)**: `#FFC94C` / `#E0B440` - Sunlight warmth
- **Accent (Mint)**: `#7AD8B4` / `#64B999` - Trust and freshness
- **Background**: `#FFF9F8` / `#1A1A1A` - Cozy interface base
- **Surface**: `#FFF1F3` / `#2A2324` - Cards and panels

### Design Principles

- **8px baseline grid** for consistent spacing
- **16px border radius** for cards
- **Soft shadows** with `rgba(0, 0, 0, 0.1)`
- **Generous whitespace** for breathing room
- **Rounded, friendly typography** (Nunito Sans, Quicksand)

## 🚀 Installation

The design system is already integrated with your Rails app. Components are located in:

```text
app/components/
├── application_component.rb       # Base component
└── ui/
    ├── button_component.rb        # Core UI
    ├── card_component.rb
    ├── badge_component.rb
    ├── shimmer_button_component.rb # Animated
    ├── blur_fade_component.rb
    ├── backgrounds/               # Backgrounds
    │   ├── dot_pattern_component.rb
    │   ├── grid_pattern_component.rb
    │   └── retro_grid_component.rb
    ├── text/                      # Text animations
    │   ├── typing_animation_component.rb
    │   ├── animated_gradient_text_component.rb
    │   └── word_rotate_component.rb
    └── layout/                    # Layouts
        ├── container_component.rb
        ├── stack_component.rb
        └── bento_grid_component.rb
```

## 🧩 Core Components

### Button

Standard button following Famli brand guidelines with multiple variants.

**Variants:** `primary`, `secondary`, `accent`, `ghost`
**Sizes:** `sm`, `md`, `lg`

```erb
<%= render Ui::ButtonComponent.new(variant: "primary", size: "md") do %>
  Click me!
<% end %>

<%= render Ui::ButtonComponent.new(variant: "secondary", loading: true) do %>
  Loading...
<% end %>

<%= render Ui::ButtonComponent.new(variant: "ghost", full_width: true) do %>
  Full width button
<% end %>
```

### Card

Container with soft shadows and rounded corners (16px radius).

```erb
<%= render Ui::CardComponent.new(hoverable: true) do %>
  <h3 class="text-lg font-bold">Card Title</h3>
  <p class="text-muted">Card content goes here</p>
<% end %>

<%= render Ui::CardComponent.new(padding: "p-4") do %>
  Smaller padding card
<% end %>
```

### Badge

Status indicators and labels.

**Variants:** `primary`, `secondary`, `accent`, `neutral`

```erb
<%= render Ui::BadgeComponent.new(variant: "primary") do %>
  New
<% end %>

<%= render Ui::BadgeComponent.new(variant: "accent", rounded: true) do %>
  3
<% end %>
```

## ✨ Animated Components

### Shimmer Button

Button with animated gradient shimmer effect.

```erb
<%= render Ui::ShimmerButtonComponent.new(size: "lg") do %>
  ✨ Add a little sparkle to this milestone
<% end %>
```

### Blur Fade

Smooth fade-in animation with blur effect.

```erb
<%= render Ui::BlurFadeComponent.new(delay: 0.2, duration: 0.5) do %>
  <div class="content-to-fade-in">
    Look how much they've grown!
  </div>
<% end %>
```

## 🎨 Background Components

### Dot Pattern

SVG-based dotted background pattern.

```erb
<div class="relative min-h-screen">
  <%= render Ui::Backgrounds::DotPatternComponent.new(
    dot_size: 2,
    gap: 20,
    color: "rgba(245, 123, 138, 0.1)"
  ) %>
  <div class="relative z-10">
    Your content here
  </div>
</div>
```

### Grid Pattern

SVG-based grid background.

```erb
<div class="relative min-h-screen">
  <%= render Ui::Backgrounds::GridPatternComponent.new(
    cell_size: 32,
    stroke_width: 0.5
  ) %>
  <div class="relative z-10">
    Your content here
  </div>
</div>
```

### Retro Grid

Animated perspective grid with 80s/90s aesthetic.

```erb
<div class="relative min-h-screen">
  <%= render Ui::Backgrounds::RetroGridComponent.new %>
  <div class="relative z-10">
    Your content here
  </div>
</div>
```

## 📝 Text Animation Components

### Typing Animation

Character-by-character typing effect (requires Stimulus controller).

```erb
<%= render Ui::Text::TypingAnimationComponent.new(
  text: "Your data is safe, and you can download it anytime.",
  speed: 50,
  cursor: true
) %>
```

### Animated Gradient Text

Text with flowing gradient animation.

```erb
<h1 class="text-4xl font-bold">
  <%= render Ui::Text::AnimatedGradientTextComponent.new do %>
    Welcome to Famli
  <% end %>
</h1>
```

### Word Rotate

Cycles through words with smooth transitions (requires Stimulus controller).

```erb
<p>
  Share your
  <%= render Ui::Text::WordRotateComponent.new(
    words: ["memories", "moments", "milestones", "joy"],
    interval: 2000
  ) %>
  with family
</p>
```

## 📐 Layout Components

### Container

Consistent page width container following responsive breakpoints.

**Sizes:** `sm`, `md`, `lg`, `xl`, `full`

```erb
<%= render Ui::Layout::ContainerComponent.new(size: "lg") do %>
  Page content
<% end %>

<%= render Ui::Layout::ContainerComponent.new(size: "md", centered: true) do %>
  Centered content
<% end %>
```

### Stack

Vertical or horizontal layout with consistent spacing.

**Directions:** `vertical`, `horizontal`
**Spacings:** `xs`, `sm`, `md`, `lg`, `xl`

```erb
<%= render Ui::Layout::StackComponent.new(direction: "vertical", spacing: "lg") do %>
  <div>Item 1</div>
  <div>Item 2</div>
  <div>Item 3</div>
<% end %>

<%= render Ui::Layout::StackComponent.new(
  direction: "horizontal",
  spacing: "sm",
  align: "items-center"
) do %>
  <span>Left</span>
  <span>Middle</span>
  <span>Right</span>
<% end %>
```

### Bento Grid

Responsive grid layout for feature showcases.

```erb
<%= render Ui::Layout::BentoGridComponent.new(columns: 3) do %>
  <%= render Ui::CardComponent.new(hoverable: true) do %>
    Feature 1
  <% end %>
  <%= render Ui::CardComponent.new(hoverable: true) do %>
    Feature 2
  <% end %>
  <%= render Ui::CardComponent.new(hoverable: true) do %>
    Feature 3
  <% end %>
<% end %>
```

## 🎯 Design Tokens

### Tailwind Utility Classes

Use these custom classes defined in `app/assets/stylesheets/theme.css`:

**Text Colors:**

- `.text-primary` - Rose color
- `.text-secondary` - Yellow color
- `.text-accent` - Mint color
- `.text-muted` - Muted text

**Backgrounds:**

- `.bg-primary` - Primary rose
- `.bg-secondary` - Secondary yellow
- `.bg-accent` - Accent mint
- `.bg-surface` - Surface color

**Borders:**

- `.border-primary`
- `.border-secondary`
- `.border-accent`

### CSS Custom Properties

```css
var(--color-primary)
var(--color-secondary)
var(--color-accent)
var(--color-background)
var(--color-surface)
var(--color-text)
var(--color-text-muted)
```

## 💡 Usage Examples

### Landing Page Hero

```erb
<div class="relative min-h-screen flex items-center">
  <%= render Ui::Backgrounds::DotPatternComponent.new %>

  <%= render Ui::Layout::ContainerComponent.new do %>
    <%= render Ui::BlurFadeComponent.new(delay: 0.1) do %>
      <h1 class="text-5xl font-bold mb-4">
        <%= render Ui::Text::AnimatedGradientTextComponent.new do %>
          Welcome to Famli
        <% end %>
      </h1>
    <% end %>

    <%= render Ui::BlurFadeComponent.new(delay: 0.3) do %>
      <p class="text-xl text-muted mb-8">
        Your private family space for
        <%= render Ui::Text::WordRotateComponent.new(
          words: ["memories", "photos", "moments", "stories"]
        ) %>
      </p>
    <% end %>

    <%= render Ui::BlurFadeComponent.new(delay: 0.5) do %>
      <%= render Ui::ShimmerButtonComponent.new(size: "lg") do %>
        Get Started ✨
      <% end %>
    <% end %>
  <% end %>
</div>
```

### Feature Grid

```erb
<%= render Ui::Layout::ContainerComponent.new do %>
  <h2 class="text-3xl font-bold mb-8 text-center">Features</h2>

  <%= render Ui::Layout::BentoGridComponent.new(columns: 3) do %>
    <%= render Ui::CardComponent.new(hoverable: true) do %>
      <h3 class="text-xl font-bold mb-2">Private & Secure</h3>
      <p class="text-muted">Your data is safe, and you can download it anytime.</p>
    <% end %>

    <%= render Ui::CardComponent.new(hoverable: true) do %>
      <h3 class="text-xl font-bold mb-2">Easy Sharing</h3>
      <p class="text-muted">Only the people you invite can see this memory.</p>
    <% end %>

    <%= render Ui::CardComponent.new(hoverable: true) do %>
      <h3 class="text-xl font-bold mb-2">Beautiful Moments</h3>
      <p class="text-muted">Look how much they've grown! 🎉</p>
    <% end %>
  <% end %>
<% end %>
```

### Content Section with Stack

```erb
<%= render Ui::Layout::ContainerComponent.new(size: "md") do %>
  <%= render Ui::Layout::StackComponent.new(spacing: "lg") do %>
    <div>
      <h2 class="text-2xl font-bold mb-4">About Famli</h2>
      <p class="text-muted">
        <%= render Ui::Text::TypingAnimationComponent.new(
          text: "A digital family space that feels both intimate and secure."
        ) %>
      </p>
    </div>

    <%= render Ui::CardComponent.new do %>
      <p>Share your family moments in a safe, private space.</p>
    <% end %>

    <%= render Ui::Layout::StackComponent.new(
      direction: "horizontal",
      spacing: "sm"
    ) do %>
      <%= render Ui::BadgeComponent.new(variant: "primary") do %>
        Private
      <% end %>
      <%= render Ui::BadgeComponent.new(variant: "secondary") do %>
        Secure
      <% end %>
      <%= render Ui::BadgeComponent.new(variant: "accent") do %>
        Easy
      <% end %>
    <% end %>
  <% end %>
<% end %>
```

## 🎭 Stimulus Controllers

The following components require Stimulus controllers (already created):

1. **typing-animation** - `app/javascript/controllers/typing_animation_controller.js`
2. **word-rotate** - `app/javascript/controllers/word_rotate_controller.js`

Make sure these are registered in your Stimulus application.

## 🔧 Customization

### Extending Components

Create custom variants by extending base components:

```ruby
# app/components/ui/custom_button_component.rb
module Ui
  class CustomButtonComponent < ButtonComponent
    def initialize(**)
      super
      # Add custom logic
    end
  end
end
```

### Adding New Variants

Modify existing components to add new variants:

```ruby
VARIANTS = T.let(%w[primary secondary accent ghost danger success].freeze, T::Array[String])
```

## 📚 Best Practices

1. **Use semantic variants** - Choose button/badge variants that match intent
2. **Maintain consistent spacing** - Use Stack component for vertical/horizontal layouts
3. **Follow brand colors** - Use primary for CTAs, secondary for highlights, accent for trust
4. **Add animations thoughtfully** - Use BlurFade for content reveals, not everything needs animation
5. **Test responsive behavior** - All components support Tailwind's responsive classes
6. **Keep it accessible** - Components include proper ARIA attributes and focus states

## 🌈 Tone of Voice

When writing copy for components, follow Famli's voice:

- **Warm**: "Look how much they've grown!"
- **Trustworthy**: "Only the people you invite can see this memory."
- **Playful**: "Add a little sparkle to this milestone ✨"
- **Reassuring**: "Your data is safe, and you can download it anytime."

---

Built with ❤️ for Famli • Inspired by Magic UI • Powered by ViewComponent
