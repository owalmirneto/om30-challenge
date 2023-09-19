# frozen_string_literal: true

class ApplicationUploader < CarrierWave::Uploader::Base
  def store_dir
    "uploads/#{model.class.to_s.underscore.pluralize}/#{model.id}/#{mounted_as}"
  end

  def size_range
    0..(5.megabytes)
  end

  def asset_host
    Rails.application.config.asset_host
  end
end
