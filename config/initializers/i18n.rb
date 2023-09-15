# frozen_string_literal: true

Rails.application.configure do
  config.i18n.enforce_available_locales = true
  config.i18n.available_locales = ["en", "pt-BR"]
  config.i18n.default_locale = "pt-BR"
  config.i18n.load_path += Dir[Rails.root.join("config/locales/**/*.{rb,yml}").to_s]

  next if Rails.env.production?

  # Raises error for missing translations.
  config.i18n.raise_on_missing_translations = true
end
