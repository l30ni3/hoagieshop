# frozen_string_literal: true

json.extract! hoagy, :id, :hoagieID, :bread, :main1, :main2, :veggies1, :veggies2, :veggies3, :veggies4, :veggies5, :sauce1, :sauce2, :created, :user, :orderID, :created_at, :updated_at
json.url hoagy_url(hoagy, format: :json)
