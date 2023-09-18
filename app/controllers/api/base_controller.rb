# frozen_string_literal: true

module API
  class BaseController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def record_not_found
      render json: { success: false }, status: :not_found
    end
  end
end
