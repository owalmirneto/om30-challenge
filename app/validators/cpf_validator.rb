# frozen_string_literal: true

class CPFValidator < ApplicationValidator
  def validate_each(record, attribute, value)
    return if CPF.valid?(value)

    record.errors.add(attribute, options[:message].presence || :invalid)
  end
end
