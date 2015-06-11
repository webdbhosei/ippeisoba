json.array!(@causes) do |cause|
  json.extract! cause, :id, :event_id, :cause_id, :content
  json.url cause_url(cause, format: :json)
end
