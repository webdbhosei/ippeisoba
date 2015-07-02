json.array!(@solvability_cons) do |solvability_con|
  json.extract! solvability_con, :id, :solvability_id, :user_id
  json.url solvability_con_url(solvability_con, format: :json)
end
