# frozen_string_literal: true

Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    authentication: :plain,
    address: ENV.fetch("MAILER_ADDRESS"),
    port: ENV.fetch("MAILER_PORT"),
    domain: ENV.fetch("MAILER_DOMAIN", nil),
    user_name: ENV.fetch("MAILER_USER_NAME", nil),
    password: ENV.fetch("MAILER_PASSWORD", nil)
  }.compact
  config.action_mailer.raise_delivery_errors = false
end
