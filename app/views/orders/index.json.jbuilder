json.array!(@orders) do |order|
  json.extract! order, :id, :order_number, :value, :total
  json.url order_url(order, format: :json)
end
