# frozen_string_literal: true

json.extract! main, :id, :mID, :mType, :mName, :created_at, :updated_at
json.url main_url(main, format: :json)
