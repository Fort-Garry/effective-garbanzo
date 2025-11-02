# typed: strict
# frozen_string_literal: true

module Ui
  module Text
    # Animated gradient text component
    # Text with flowing gradient animation
    class AnimatedGradientTextComponent < ApplicationComponent
      extend T::Sig

      sig do
        params(
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(**html_options)
        super()
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def text_classes
        merge_classes(
          "bg-gradient-to-r from-primary via-secondary to-accent bg-clip-text text-transparent",
          "animate-gradient bg-[length:200%_auto]",
          @html_options[:class]
        )
      end
    end
  end
end
