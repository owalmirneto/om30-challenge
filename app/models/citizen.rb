# frozen_string_literal: true

class Citizen < ApplicationRecord
  validates :name, presence: true
  validates :cpf, presence: true
  validates :cns, presence: true, "CnsBrazil::Cns": true
  validates :email, presence: true
  validates :born_in, presence: true
  validates :phone, presence: true

  has_one :address, as: :addressable, dependent: :nullify

  accepts_nested_attributes_for :address

  mount_uploader :photo, Citizens::PhotoUploader
end
