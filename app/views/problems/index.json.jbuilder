json.array!(@problems) do |problem|
  json.extract! problem, :id, :event_id, :user_id, :title, :content
  json.url problem_url(problem, format: :json)
end
