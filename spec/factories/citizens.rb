# frozen_string_literal: true

FactoryBot.define do
  factory :citizen do
    name { Faker::Name.name }
    cpf { Faker::CPF.numeric }
    cns { CnsBrazil::Cns.generate }
    email { Faker::Internet.email }
    born_in { Faker::Date.birthday.to_s }
    phone { Faker::PhoneNumber.phone_number }
    enabled { Faker::Boolean.boolean }

    trait :blank do
      name { nil }
      cpf { nil }
      cns { nil }
      email { nil }
      born_in { nil }
      phone { nil }
      enabled { nil }
    end

    trait :enabled do
      enabled { true }
    end

    trait :disabled do
      enabled { false }
    end

    factory :blank_citizen, traits: [:blank]
    factory :enabled_citizen, traits: [:enabled]
    factory :disabled_citizen, traits: [:disabled]
  end
end
