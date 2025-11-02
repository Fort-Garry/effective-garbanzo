# typed: strict
# frozen_string_literal: true

module Ui
  module Layout
    # Container component for consistent page layouts
    # Follows Famli's 8px baseline grid
    class ContainerComponent < ApplicationComponent
      extend T::Sig

      SIZES = T.let(%w[sm md lg xl full].freeze, T::Array[String])

      sig do
        params(
          size: String,
          centered: T::Boolean,
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(size: "lg", centered: true, **html_options)
        super()
        @size = T.let(SIZES.include?(size) ? size : "lg", String)
        @centered = T.let(centered, T::Boolean)
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def container_classes
        merge_classes(base_classes, @html_options[:class])
      end

      private

      sig { returns(String) }
      def base_classes
        css_classes(
          "w-full px-4 sm:px-6 lg:px-8",
          @centered ? "mx-auto" : nil,
          size_classes
        )
      end

      sig { returns(String) }
      def size_classes
        case @size
        when "sm"
          "max-w-2xl"
        when "md"
          "max-w-4xl"
        when "lg"
          "max-w-6xl"
        when "xl"
          "max-w-7xl"
        when "full"
          "max-w-full"
        else
          "max-w-6xl"
        end
      end
    end
  end
end
