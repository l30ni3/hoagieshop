json.extract! ingredient, :id, :IDIngred, :name, :description, :price, :type, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
