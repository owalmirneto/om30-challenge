# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  validates :zip_code, presence: true
  validates :street_name, presence: true
  validates :neighborhood, presence: true
  validates :state, inclusion: { in: AddressStates.list }
  validates :city, presence: true

  has_enumeration_for :state, with: AddressStates
end
