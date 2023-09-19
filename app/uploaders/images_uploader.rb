# frozen_string_literal: true

class ImagesUploader < ApplicationUploader
  def extension_allowlist
    [:png, :jpg, :jpeg, :svg, :gif]
  end

  version :thumb do
    process resize_to_fit: [50, 50]
  end
end
