# frozen_string_literal: true

FactoryBot.define do
  factory :via_cep_address, class: "HashWithIndifferentAccess" do
    cep { Faker::Address.zip_code }
    logradouro { Faker::Address.street_name }
    complemento { "" }
    bairro { Faker::Address.community }
    localidade { Faker::Address.city }
    uf { AddressStates.sample }
    ibge { Faker::Base.numerify("#######") }
    gia { "" }
    ddd { Faker::Base.numerify("##") }
    siafi { Faker::Base.numerify("####") }

    trait :blank do
      cep { nil }
      logradouro { nil }
      complemento { nil }
      bairro { nil }
      localidade { nil }
      uf { nil }
      ibge { nil }
      gia { nil }
      ddd { nil }
      siafi { nil }
    end

    factory :blank_via_cep_address, traits: [:blank]

    initialize_with { attributes }
  end
end
