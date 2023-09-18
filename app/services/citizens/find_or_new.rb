# frozen_string_literal: true

module Citizens
  class FindOrNew < ApplicationInteractor
    def call
      context.citizen = Citizen.find(context.id) if context.id.present?

      context.citizen ||= Citizen.new
    end
  end
end
