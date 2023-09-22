# frozen_string_literal: true

FactoryBot.define do
  factory :citizen do
    name { Faker::Name.name }
    cpf { Faker::CPF.numeric }
    cns { CnsBrazil::Cns.generate }
    email { Faker::Internet.email }
    born_in { Faker::Date.birthday.to_s }
    phone { Faker::PhoneNumber.cell_phone }
    enabled { Faker::Boolean.boolean }

    trait :blank do
      name { nil }
      cpf { nil }
      cns { nil }
      email { nil }
      born_in { nil }
      phone { nil }
      enabled { nil }
      photo { nil }
    end

    trait :enabled do
      enabled { true }
    end

    trait :disabled do
      enabled { false }
    end

    trait :with_photo do
      photo { Rack::Test::UploadedFile.new(File.open(Rails.root.join("spec/factories/citizen-photo.png").to_s)) }
    end

    factory :blank_citizen, traits: [:blank]
    factory :enabled_citizen, traits: [:enabled]
    factory :disabled_citizen, traits: [:disabled]
    factory :citizen_with_photo, traits: [:with_photo]
  end
end
