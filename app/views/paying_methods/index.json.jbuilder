# frozen_string_literal: true

json.array! @paying_methods, partial: 'paying_methods/paying_method', as: :paying_method
