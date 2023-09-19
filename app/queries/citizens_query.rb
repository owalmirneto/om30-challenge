# frozen_string_literal: true

class CitizensQuery < ApplicationQuery
  ALLOWED_SEARCH_COLUMNS = [
    "citizens.name",
    "citizens.email",
    "citizens.cpf",
    "citizens.cns"
  ].freeze

  def init_relation
    @relation = Citizen.all
  end

  def search(term)
    @relation = @relation.order(created_at: :desc)

    search_ilike_for(ALLOWED_SEARCH_COLUMNS, term)
  end

  # def search_ilike_for(colums, term)
  #   return self unless term

  #   params = { t: "%#{term.to_s.downcase}%" }
  #   colums = colums.map { |colum| "unaccent(#{colum}) ILIKE unaccent(:t)" }
  #   @relation = relation.where(colums.join(" OR "), params)

  #   self
  # end

  def build(attributes = {})
    citizen = @relation.new(attributes)
    citizen.build_address if citizen.address.blank?

    citizen
  end
end
