json.array!(@configdbs) do |configdb|
  json.extract! configdb, :id, :location, :username, :password, :monitor
  json.url configdb_url(configdb, format: :json)
end
