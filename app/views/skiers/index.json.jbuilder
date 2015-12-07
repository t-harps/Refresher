json.array!(@skiers) do |skier|
  json.extract! skier, :id, :name, :discipline
  json.url skier_url(skier, format: :json)
end
