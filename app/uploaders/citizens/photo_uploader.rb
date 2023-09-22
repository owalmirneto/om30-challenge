# frozen_string_literal: true

module Citizens
  class PhotoUploader < ApplicationUploader
    include CarrierWave::MiniMagick

    def extension_allowlist
      [:png, :jpg, :jpeg, :svg, :gif]
    end

    version :thumb do
      process resize_and_pad: [30, 30]
    end

    version :medium do
      process resize_and_pad: [100, 100]
    end
  end
end
