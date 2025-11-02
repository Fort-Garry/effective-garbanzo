# typed: strict
# frozen_string_literal: true

module Ui
  # Badge component for status indicators and labels
  class BadgeComponent < ApplicationComponent
    extend T::Sig

    VARIANTS = T.let(%w[primary secondary accent neutral].freeze, T::Array[String])

    sig do
      params(
        variant: String,
        rounded: T::Boolean,
        html_options: T::Hash[Symbol, T.untyped]
      ).void
    end
    def initialize(variant: "primary", rounded: false, **html_options)
      super()
      @variant = T.let(VARIANTS.include?(variant) ? variant : "primary", String)
      @rounded = T.let(rounded, T::Boolean)
      @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
    end

    sig { returns(String) }
    def badge_classes
      merge_classes(base_classes, @html_options[:class])
    end

    private

    sig { returns(String) }
    def base_classes
      css_classes(
        "inline-flex items-center px-2.5 py-0.5 text-xs font-medium",
        @rounded ? "rounded-full" : "rounded-lg",
        variant_classes
      )
    end

    sig { returns(String) }
    def variant_classes
      case @variant
      when "primary"
        "bg-primary/10 text-primary"
      when "secondary"
        "bg-secondary/10 text-secondary"
      when "accent"
        "bg-accent/10 text-accent"
      when "neutral"
        "bg-surface text-text"
      else
        ""
      end
    end
  end
end
