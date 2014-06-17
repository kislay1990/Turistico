json.array!(@tours) do |tour|
  json.extract! tour, :id, :country, :city, :begin_at, :expected_at, :transport, :travel, :price, :description
  json.url tour_url(tour, format: :json)
end
