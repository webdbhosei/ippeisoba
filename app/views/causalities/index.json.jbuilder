json.array!(@causalities) do |causality|
  json.extract! causality, :id, :src_id, :dst_id
  json.url causality_url(causality, format: :json)
end
