# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    addressable factory: :citizen

    zip_code { Faker::Address.zip_code.delete("-") }
    street_name { Faker::Address.street_name }
    building_number { Faker::Address.building_number }
    neighborhood { Faker::Address.community }
    city { Faker::Address.city }
    state { AddressStates.sample }

    trait :blank do
      addressable { nil }

      zip_code { nil }
      street_name { nil }
      building_number { nil }
      neighborhood { nil }
      city { nil }
      state { nil }
    end

    factory :blank_address, traits: [:blank]
  end
end
