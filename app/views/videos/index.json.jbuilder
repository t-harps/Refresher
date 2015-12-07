json.array!(@videos) do |video|
  json.extract! video, :id, :name, :rank, :link
  json.url video_url(video, format: :json)
end
