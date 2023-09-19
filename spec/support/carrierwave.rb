# frozen_string_literal: true

CarrierWave.configure do |config|
  config.storage = :file
  config.enable_processing = false
end

CarrierWave::Uploader::Base.descendants.each do |klass|
  next if klass.anonymous?

  klass.class_eval do
    def cache_dir
      Rails.root.join("spec/support/uploads/tmp").to_s
    end

    def store_dir
      Rails.root.join("spec/support/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}").to_s
    end
  end
end

RSpec.configure do |config|
  config.after do
    FileUtils.rm_rf(Dir[Rails.root.join("spec/support/uploads").to_s]) if Rails.env.test?
  end
end
