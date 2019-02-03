# frozen_string_literal: true

json.extract! bread, :id, :bID, :bType, :bName, :created_at, :updated_at
json.url bread_url(bread, format: :json)
