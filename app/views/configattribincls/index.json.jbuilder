json.array!(@configattribincls) do |configattribincl|
  json.extract! configattribincl, :id, :configattrib_id, :param1, :th_warning, :th_critical
  json.url configattribincl_url(configattribincl, format: :json)
end
