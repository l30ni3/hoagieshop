# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name 'Miller'
    surName 'Joe'
    adr 'Wilhelminenhofstraße 75A, 12459 Berlin'
    payMethod 'PayPal'
    userID 0001
    role 'customer'
  end
end
