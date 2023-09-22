# frozen_string_literal: true

class BirthDateValidator < ApplicationValidator
  def validate_each(record, attribute, value)
    return if Date.current > Date.iso8601(value.to_s)

    record.errors.add(attribute, options[:message].presence || :before_today)
  rescue Date::Error => _e
    record.errors.add(attribute, :invalid)
  end
end
