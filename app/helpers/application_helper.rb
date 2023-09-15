# frozen_string_literal: true

module ApplicationHelper
  def app_name
    ENV.fetch("APP_NAME")
  end

  def app_version
    File.read("VERSION").strip
  end
end
