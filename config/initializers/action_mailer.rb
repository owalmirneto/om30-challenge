# frozen_string_literal: true

Rails.application.configure do
  next if Rails.env.production?

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: ENV.fetch("MAILER_HOST"),
    port: ENV.fetch("MAILER_PORT")
  }
  config.action_mailer.raise_delivery_errors = false
end
