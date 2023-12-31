# frozen_string_literal: true

require "simplecov"
require "simplecov-json"
require "simplecov-cobertura"

SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new(
  [SimpleCov::Formatter::HTMLFormatter, SimpleCov::Formatter::JSONFormatter]
)

SimpleCov.start "rails" do
  add_filter "app/models/application_record.rb"
  add_filter "app/mailers/application_mailer.rb"
  add_filter "app/jobs/application_job.rb"
  add_filter "app/channels/application_cable/connection.rb"
  add_filter "app/channels/application_cable/channel.rb"
end
