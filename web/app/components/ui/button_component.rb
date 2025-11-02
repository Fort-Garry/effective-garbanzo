# typed: strict
# frozen_string_literal: true

module Ui
  # Button component following Famli brand guidelines
  # Supports multiple variants: primary, secondary, accent, ghost
  # Sizes: sm, md, lg
  class ButtonComponent < ApplicationComponent
    extend T::Sig

    VARIANTS = T.let(%w[primary secondary accent ghost].freeze, T::Array[String])
    SIZES = T.let(%w[sm md lg].freeze, T::Array[String])

    sig do
      params(
        variant: String,
        size: String,
        full_width: T::Boolean,
        disabled: T::Boolean,
        loading: T::Boolean,
        html_options: T::Hash[Symbol, T.untyped]
      ).void
    end
    def initialize(variant: "primary", size: "md", full_width: false, disabled: false, loading: false, **html_options)
      super()
      @variant = T.let(VARIANTS.include?(variant) ? variant : "primary", String)
      @size = T.let(SIZES.include?(size) ? size : "md", String)
      @full_width = T.let(full_width, T::Boolean)
      @disabled = T.let(disabled || loading, T::Boolean)
      @loading = T.let(loading, T::Boolean)
      @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
    end

    sig { returns(String) }
    def button_classes
      merge_classes(base_classes, @html_options[:class])
    end

    private

    sig { returns(String) }
    def base_classes
      css_classes(
        "inline-flex items-center justify-center font-medium transition-all duration-200",
        "focus:outline-none focus:ring-2 focus:ring-offset-2",
        "disabled:opacity-50 disabled:cursor-not-allowed",
        variant_classes,
        size_classes,
        @full_width ? "w-full" : nil
      )
    end

    sig { returns(String) }
    def variant_classes
      case @variant
      when "primary"
        "bg-primary text-white hover:opacity-90 focus:ring-primary rounded-lg"
      when "secondary"
        "bg-secondary text-gray-900 hover:opacity-90 focus:ring-secondary rounded-lg"
      when "accent"
        "bg-accent text-gray-900 hover:opacity-90 focus:ring-accent rounded-lg"
      when "ghost"
        "bg-transparent hover:bg-surface focus:ring-primary rounded-lg"
      else
        ""
      end
    end

    sig { returns(String) }
    def size_classes
      case @size
      when "sm"
        "px-3 py-1.5 text-sm rounded-lg"
      when "md"
        "px-4 py-2 text-base rounded-lg"
      when "lg"
        "px-6 py-3 text-lg rounded-xl"
      else
        ""
      end
    end
  end
end
