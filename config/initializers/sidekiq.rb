# frozen_string_literal: true

Rails.application.configure do
  config.active_job.queue_adapter = :sidekiq
end

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch("REDIS_URL", "redis://host.docker.internal:6379/1") }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL", "redis://host.docker.internal:6379/1") }
end
