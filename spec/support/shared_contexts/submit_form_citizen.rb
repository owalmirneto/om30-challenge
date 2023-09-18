# frozen_string_literal: true

shared_context "when submit form citizen" do |button_type|
  before do
    find_by_id("citizen_name").set(citizen_attributes[:name])
    find_by_id("citizen_email").set(citizen_attributes[:email])
    find_by_id("citizen_phone").set(citizen_attributes[:phone])
    find_by_id("citizen_cpf").set(citizen_attributes[:cpf])
    find_by_id("citizen_cns").set(citizen_attributes[:cns])
    find_by_id("citizen_born_in").set(citizen_attributes[:born_in])

    find_by_id("citizen_address_attributes_zip_code").set(address_attributes[:zip_code])
    find_by_id("citizen_address_attributes_street_name").set(address_attributes[:street_name])
    find_by_id("citizen_address_attributes_building_number").set(address_attributes[:building_number])
    find_by_id("citizen_address_attributes_neighborhood").set(address_attributes[:neighborhood])
    find_by_id("citizen_address_attributes_city").set(address_attributes[:city])

    find("#citizen_address_attributes_state option[value='#{address_attributes[:state]}']").select_option

    click_on(h.tmb(Citizen, button_type))
  end
end
