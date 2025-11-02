# typed: strict
# frozen_string_literal: true

module Ui
  module Backgrounds
    # Grid pattern background component
    # SVG-based grid background
    class GridPatternComponent < ApplicationComponent
      extend T::Sig

      sig do
        params(
          cell_size: Integer,
          stroke_width: Float,
          color: String,
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(cell_size: 32, stroke_width: 0.5, color: "rgba(245, 123, 138, 0.1)", **html_options)
        super()
        @cell_size = T.let(cell_size, Integer)
        @stroke_width = T.let(stroke_width, Float)
        @color = T.let(color, String)
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def wrapper_classes
        merge_classes("absolute inset-0 -z-10", @html_options[:class])
      end

      sig { returns(Integer) }
      attr_reader :cell_size

      sig { returns(Float) }
      attr_reader :stroke_width

      sig { returns(String) }
      attr_reader :color
    end
  end
end
