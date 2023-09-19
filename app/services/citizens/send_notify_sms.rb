# frozen_string_literal: true

module Citizens
  class SendNotifySMS < ApplicationInteractor
    def call
      Citizens::SendSMSJob.perform_async(context.citizen.id)
    end
  end
end
