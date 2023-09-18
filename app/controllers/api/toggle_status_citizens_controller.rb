# frozen_string_literal: true

module API
  class ToggleStatusCitizensController < API::BaseController
    def update
      render json: { success: citizen.update(enabled: !citizen.enabled) }
    end

    private

    def citizen
      @citizen ||= CitizensQuery.new.find(params[:id])
    end
  end
end
