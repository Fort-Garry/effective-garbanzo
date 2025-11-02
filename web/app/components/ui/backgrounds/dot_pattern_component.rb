# typed: strict
# frozen_string_literal: true

module Ui
  module Backgrounds
    # Dot pattern background component
    # SVG-based dotted background pattern
    class DotPatternComponent < ApplicationComponent
      extend T::Sig

      sig do
        params(
          dot_size: Integer,
          gap: Integer,
          color: String,
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(dot_size: 1, gap: 20, color: "rgba(245, 123, 138, 0.1)", **html_options)
        super()
        @dot_size = T.let(dot_size, Integer)
        @gap = T.let(gap, Integer)
        @color = T.let(color, String)
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def wrapper_classes
        merge_classes("absolute inset-0 -z-10", @html_options[:class])
      end

      sig { returns(Integer) }
      attr_reader :dot_size, :gap

      sig { returns(String) }
      attr_reader :color
    end
  end
end
