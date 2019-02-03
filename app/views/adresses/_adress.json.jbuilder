# frozen_string_literal: true

json.extract! adress, :id, :street, :number, :postalCode, :city, :email, :phone, :isBillingAdress, :created_at, :updated_at
json.url adress_url(adress, format: :json)
