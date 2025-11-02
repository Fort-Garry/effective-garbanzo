# typed: strict
# frozen_string_literal: true

module Ui
  module Text
    # Word rotate component
    # Cycles through an array of words with smooth transitions
    class WordRotateComponent < ApplicationComponent
      extend T::Sig

      sig do
        params(
          words: T::Array[String],
          interval: Integer,
          html_options: T::Hash[Symbol, T.untyped]
        ).void
      end
      def initialize(words:, interval: 2000, **html_options)
        super()
        @words = T.let(words, T::Array[String])
        @interval = T.let(interval, Integer)
        @html_options = T.let(html_options, T::Hash[Symbol, T.untyped])
      end

      sig { returns(String) }
      def wrapper_classes
        merge_classes("inline-block", @html_options[:class])
      end

      sig { returns(String) }
      def words_json
        @words.to_json
      end

      sig { returns(Integer) }
      attr_reader :interval
    end
  end
end
