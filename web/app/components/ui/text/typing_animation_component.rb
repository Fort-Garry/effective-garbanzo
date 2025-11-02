# typed: strict
# frozen_string_literal: true

module Ui
  module Text
    # Typing animation component
    # Simulates text being typed character by character
    class TypingAnimationComponent < ApplicationComponent
      extend T::Sig

      sig do
        params(
          text: String,
          speed: Integer,
          cursor: T::Boolean,
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(text:, speed: 50, cursor: true, **html_options)
        super()
        @text = T.let(text, String)
        @speed = T.let(speed, Integer)
        @cursor = T.let(cursor, T::Boolean)
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def wrapper_classes
        merge_classes("inline-block", @html_options[:class])
      end

      sig { returns(String) }
      attr_reader :text

      sig { returns(Integer) }
      attr_reader :speed

      sig { returns(T::Boolean) }
      def cursor?
        @cursor
      end
    end
  end
end
