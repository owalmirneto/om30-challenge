# frozen_string_literal: true

CarrierWave.configure do |config|
  carrierwave_store = ENV.fetch("CARRIER_WAVE_STORAGE").to_sym

  config.asset_host = ActionMailer::Base.asset_host
  config.storage = carrierwave_store
  config.cache_dir = Rails.public_path.join("uploads/tmp")
  config.fog_public = true

  if carrierwave_store == :fog
    config.fog_credentials = {
      provider: "AWS",
      aws_access_key_id: ENV.fetch("AWS_S3_ACCESS_KEY_ID"),
      aws_secret_access_key: ENV.fetch("AWS_S3_SECRET_ACCESS_KEY"),
      region: ENV.fetch("AWS_S3_REGION")
    }

    config.fog_directory = ENV.fetch("AWS_S3_BUCKET")
    config.asset_host = ENV.fetch("CARRIER_WAVE_ASSET_HOST", config.asset_host)
  end

  if Rails.env.test?
    config.enable_processing = false
    config.root = Rails.root.join("tmp")
  end
end
