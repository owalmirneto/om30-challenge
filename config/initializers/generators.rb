# frozen_string_literal: true

Rails.application.configure do
  config.generators do |generator|
    generator.orm :active_record, primary_key_type: :uuid
    generator.test_framework :rspec
    generator.integration_tool :rspec
    generator.system_tests :rspec
    generator.routing_tests false
    generator.helper_specs false
    generator.view_specs false
    generator.test_unit false
    generator.helper false
    generator.assets false
    generator.fixture_replacement :factory_bot, dir: "spec/factories"
  end

  config.generators.system_tests = nil
end
