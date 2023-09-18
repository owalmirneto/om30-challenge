# frozen_string_literal: true

module RSpecHelpers
  def translate(key, **)
    I18n.t(key, **)
  end
  alias t translate

  def helpers
    @helpers ||= ApplicationController.helpers
  end
  alias h helpers

  def json_body
    return if response.body.blank?

    @json_body ||= JSON.parse(response.body, symbolize_names: true)
  end
end

RSpec.configure do |config|
  config.include RSpecHelpers
end
