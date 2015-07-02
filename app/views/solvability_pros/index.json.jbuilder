json.array!(@solvability_pros) do |solvability_pro|
  json.extract! solvability_pro, :id, :solvability_id, :user_id
  json.url solvability_pro_url(solvability_pro, format: :json)
end
