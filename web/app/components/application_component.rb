# typed: strict
# frozen_string_literal: true

# Base class for all Famli ViewComponents
# Provides common functionality and design system utilities
class ApplicationComponent < ViewComponent::Base
  extend T::Sig
  extend T::Helpers

  abstract!

  # Build CSS classes from component options
  sig { params(classes: T::Array[T.nilable(String)]).returns(String) }
  def css_classes(*classes)
    classes.flatten.compact.join(" ")
  end

  # Merge user-provided classes with default classes
  sig { params(default: String, additional: T.nilable(String)).returns(String) }
  def merge_classes(default, additional = nil)
    return default if additional.nil?

    "#{default} #{additional}"
  end

  # Generate Stimulus controller attributes
  sig { params(controller: String, values: T::Hash[String, T.untyped]).returns(T::Hash[Symbol, String]) }
  def stimulus_controller(controller, values: {})
    attrs = {data: {controller: controller}}
    values.each do |key, value|
      attrs[:data][:"#{controller}-#{key}-value"] = value.to_json
    end
    attrs
  end
end
