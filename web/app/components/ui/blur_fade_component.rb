# typed: strict
# frozen_string_literal: true

module Ui
  # Blur fade animation component
  # Smoothly fades in content with a blur effect
  class BlurFadeComponent < ApplicationComponent
    extend T::Sig

    sig do
      params(
        delay: Float,
        duration: Float,
        html_options: T::Hash[Symbol, T.untyped]
      ).void
    end
    def initialize(delay: 0.0, duration: 0.5, **html_options)
      super()
      @delay = T.let(delay, Float)
      @duration = T.let(duration, Float)
      @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
    end

    sig { returns(String) }
    def wrapper_classes
      merge_classes("animate-blur-fade", @html_options[:class])
    end

    sig { returns(String) }
    def animation_style
      "animation-delay: #{@delay}s; animation-duration: #{@duration}s;"
    end
  end
end
