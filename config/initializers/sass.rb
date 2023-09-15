# frozen_string_literal: true

Rails.application.configure do
  next if Rails.env.production?

  config.sass.inline_source_maps = true
end
