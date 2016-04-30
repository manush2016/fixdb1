json.array!(@configattribdetails) do |configattribdetail|
  json.extract! configattribdetail, :id, :configattrib_id, :log_time, :param1, :param2, :notified
  json.url configattribdetail_url(configattribdetail, format: :json)
end
