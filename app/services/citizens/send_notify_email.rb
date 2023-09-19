# frozen_string_literal: true

module Citizens
  class SendNotifyEmail < ApplicationInteractor
    def call
      CitizensMailer.notify(context.citizen.id).deliver_later
    end
  end
end
