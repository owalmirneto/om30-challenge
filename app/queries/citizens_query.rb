# frozen_string_literal: true

class CitizensQuery < ApplicationQuery
  def init_relation
    @relation = Citizen.all
  end

  def build(attributes = {})
    citizen = @relation.new(attributes)
    citizen.build_address if citizen.address.blank?

    citizen
  end
end
