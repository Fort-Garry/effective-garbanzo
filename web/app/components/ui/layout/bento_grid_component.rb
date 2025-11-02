# typed: strict
# frozen_string_literal: true

module Ui
  module Layout
    # Bento grid component for feature showcases
    # Inspired by Magic UI's bento-grid
    class BentoGridComponent < ApplicationComponent
      extend T::Sig

      sig do
        params(
          columns: Integer,
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(columns: 3, **html_options)
        super()
        @columns = T.let(columns, Integer)
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def grid_classes
        merge_classes(base_classes, @html_options[:class])
      end

      private

      sig { returns(String) }
      def base_classes
        css_classes(
          "grid gap-4",
          column_classes
        )
      end

      sig { returns(String) }
      def column_classes
        case @columns
        when 2
          "grid-cols-1 md:grid-cols-2"
        when 3
          "grid-cols-1 md:grid-cols-2 lg:grid-cols-3"
        when 4
          "grid-cols-1 md:grid-cols-2 lg:grid-cols-4"
        else
          "grid-cols-1 md:grid-cols-2 lg:grid-cols-3"
        end
      end
    end
  end
end
