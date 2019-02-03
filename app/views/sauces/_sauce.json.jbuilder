# frozen_string_literal: true

json.extract! sauce, :id, :sID, :sName, :created_at, :updated_at
json.url sauce_url(sauce, format: :json)
