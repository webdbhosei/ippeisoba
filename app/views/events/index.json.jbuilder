json.array!(@events) do |event|
<<<<<<< HEAD
  json.extract! event, :id, :title, :content, :user_id
=======
  json.extract! event, :id, :title
>>>>>>> origin/using_active_record
  json.url event_url(event, format: :json)
end
