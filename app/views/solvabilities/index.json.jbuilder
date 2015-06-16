json.array!(@solvabilities) do |solvability|
  json.extract! solvability, :id, :src_id, :dst_id
  json.url solvability_url(solvability, format: :json)
end
