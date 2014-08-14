json.array!(@tangents) do |tangent|
  json.extract! tangent, :id, :name, :description
  json.url tangent_url(tangent, format: :json)
end
