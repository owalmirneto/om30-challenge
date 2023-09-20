# frozen_string_literal: true

class ImagesUploader < ApplicationUploader
  def extension_allowlist
    [:png, :jpg, :jpeg, :svg, :gif]
  end
end
