# frozen_string_literal: true

json.extract! veggy, :id, :vID, :vName, :created_at, :updated_at
json.url veggy_url(veggy, format: :json)
