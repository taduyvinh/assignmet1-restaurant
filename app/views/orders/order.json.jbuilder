json.extract! order, :id, :username, :phonenumber, :address, :food_item_id, :created_at updated_at
json.url order_url(order, format: :json)