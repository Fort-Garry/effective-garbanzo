# typed: strict
# frozen_string_literal: true

module Ui
  # Shimmer button with animated light effect
  # Inspired by Magic UI's shimmer-button
  class ShimmerButtonComponent < ApplicationComponent
    extend T::Sig

    sig do
      params(
        size: String,
        html_options: T::Hash[Symbol, T.untyped]
      ).void
    end
    def initialize(size: "md", **html_options)
      super()
      @size = T.let(size, String)
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
        "group relative inline-flex items-center justify-center overflow-hidden",
        "font-medium transition-all duration-300",
        "bg-gradient-to-r from-primary via-secondary to-accent",
        "hover:shadow-lg hover:shadow-primary/50",
        "focus:outline-none focus:ring-2 focus:ring-primary focus:ring-offset-2",
        size_classes
      )
    end

    sig { returns(String) }
    def size_classes
      case @size
      when "sm"
        "px-4 py-2 text-sm rounded-lg"
      when "md"
        "px-6 py-3 text-base rounded-xl"
      when "lg"
        "px-8 py-4 text-lg rounded-2xl"
      else
        "px-6 py-3 text-base rounded-xl"
      end
    end
  end
end
