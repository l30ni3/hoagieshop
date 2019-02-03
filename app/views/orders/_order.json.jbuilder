# frozen_string_literal: true

json.extract! order, :id, :orderId, :date, :userID, :sumTotal, :estDelivery, :hasItems, :created_at, :updated_at
json.url order_url(order, format: :json)
