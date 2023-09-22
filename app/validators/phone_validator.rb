# frozen_string_literal: true

class PhoneValidator < ApplicationValidator
  def validate_each(record, attribute, value)
    return if value.to_s.delete!("^0-9") != 11

    record.errors.add(attribute, options[:message].presence || :invalid)
  end
end
