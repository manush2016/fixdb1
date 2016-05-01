json.array!(@alarms) do |alarm|
  json.extract! alarm, :id, :configdb_id, :configattrib_id, :alarm_time, :alarm_state, :alarm_component, :alarm_value, :flag
  json.url alarm_url(alarm, format: :json)
end
