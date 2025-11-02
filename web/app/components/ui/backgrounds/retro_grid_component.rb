# typed: strict
# frozen_string_literal: true

module Ui
  module Backgrounds
    # Retro grid background with perspective effect
    # Inspired by 80s/90s aesthetic
    class RetroGridComponent < ApplicationComponent
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
      def wrapper_classes
        merge_classes("absolute inset-0 -z-10 overflow-hidden", @html_options[:class])
      end
    end
  end
end
