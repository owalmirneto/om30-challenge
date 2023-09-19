# frozen_string_literal: true

Zenvia.configure do |config|
  next unless Rails.env.development?

  config.from = ENV.fetch("ZENVIA_FROM")
  config.account = ENV.fetch("ZENVIA_ACCOUNT")
  config.code = ENV.fetch("ZENVIA_CODE")
end
