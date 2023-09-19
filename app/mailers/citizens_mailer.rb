# frozen_string_literal: true

class CitizensMailer < ApplicationMailer
  def notify(citizen_id)
    @citizen = Citizen.find(citizen_id)

    mail(to: @citizen.email)
  end
end
