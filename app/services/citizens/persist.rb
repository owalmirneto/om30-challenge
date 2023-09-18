# frozen_string_literal: true

module Citizens
  class Persist < ApplicationInteractor
    def call
      return if context.citizen.update(context.params)

      context.fail!
    end
  end
end
