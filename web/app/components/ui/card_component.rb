# typed: strict
# frozen_string_literal: true

module Ui
  # Card component with soft shadows and rounded corners
  # Follows Famli brand: 16px radius, soft elevation
  class CardComponent < ApplicationComponent
    extend T::Sig

    sig do
      params(
        padding: T.nilable(String),
        hoverable: T::Boolean,
        html_options: T::Hash[Symbol, T.untyped]
      ).void
    end
    def initialize(padding: "p-6", hoverable: false, **html_options)
      super()
      @padding = T.let(padding, T.nilable(String))
      @hoverable = T.let(hoverable, T::Boolean)
      @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
    end

    sig { returns(String) }
    def card_classes
      merge_classes(base_classes, @html_options[:class])
    end

    private

    sig { returns(String) }
    def base_classes
      css_classes(
        "bg-surface rounded-2xl shadow-sm",
        @padding,
        @hoverable ? "transition-all duration-200 hover:shadow-md hover:-translate-y-1" : nil
      )
    end
  end
end
