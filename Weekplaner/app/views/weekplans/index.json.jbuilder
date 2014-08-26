json.array!(@weekplans) do |weekplan|
  json.extract! weekplan, :id, :week, :plan
  json.url weekplan_url(weekplan, format: :json)
end
