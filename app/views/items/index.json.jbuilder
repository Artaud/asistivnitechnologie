json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :iso_9999_v2011_category, :solves_problem, :associated_diagnosis, :seller
  json.url item_url(item, format: :json)
end
