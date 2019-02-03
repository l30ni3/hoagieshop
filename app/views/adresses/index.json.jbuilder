# frozen_string_literal: true

json.array! @adresses, partial: 'adresses/adress', as: :adress
