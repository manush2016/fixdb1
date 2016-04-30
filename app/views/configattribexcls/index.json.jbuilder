json.array!(@configattribexcls) do |configattribexcl|
  json.extract! configattribexcl, :id, :configattrib_id, :param1, :excludemonitor
  json.url configattribexcl_url(configattribexcl, format: :json)
end
