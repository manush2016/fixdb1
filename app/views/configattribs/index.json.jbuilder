json.array!(@configattribs) do |configattrib|
  json.extract! configattrib, :id, :configdb_id, :attribute_name, :monitor, :th_warning, :th_critical, :command, :command_operand, :command_operator, :command_file_type
  json.url configattrib_url(configattrib, format: :json)
end
