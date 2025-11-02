# typed: strict
# frozen_string_literal: true

module Ui
  module Layout
    # Stack component for consistent spacing
    # Follows Famli's 8px baseline grid
    class StackComponent < ApplicationComponent
      extend T::Sig

      DIRECTIONS = T.let(%w[vertical horizontal].freeze, T::Array[String])
      SPACINGS = T.let(%w[xs sm md lg xl].freeze, T::Array[String])

      sig do
        params(
          direction: String,
          spacing: String,
          align: T.nilable(String),
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(direction: "vertical", spacing: "md", align: nil, **html_options)
        super()
        @direction = T.let(DIRECTIONS.include?(direction) ? direction : "vertical", String)
        @spacing = T.let(SPACINGS.include?(spacing) ? spacing : "md", String)
        @align = T.let(align, T.nilable(String))
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def stack_classes
        merge_classes(base_classes, @html_options[:class])
      end

      private

      sig { returns(String) }
      def base_classes
        css_classes(
          "flex",
          direction_classes,
          spacing_classes,
          align_classes
        )
      end

      sig { returns(String) }
      def direction_classes
        (@direction == "vertical") ? "flex-col" : "flex-row"
      end

      sig { returns(String) }
      def spacing_classes
        case @spacing
        when "xs"
          (@direction == "vertical") ? "space-y-2" : "space-x-2"
        when "sm"
          (@direction == "vertical") ? "space-y-4" : "space-x-4"
        when "md"
          (@direction == "vertical") ? "space-y-6" : "space-x-6"
        when "lg"
          (@direction == "vertical") ? "space-y-8" : "space-x-8"
        when "xl"
          (@direction == "vertical") ? "space-y-12" : "space-x-12"
        else
          (@direction == "vertical") ? "space-y-6" : "space-x-6"
        end
      end

      sig { returns(T.nilable(String)) }
      def align_classes
        @align
      end
    end
  end
end
