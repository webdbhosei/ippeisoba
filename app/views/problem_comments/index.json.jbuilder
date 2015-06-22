json.array!(@problem_comments) do |problem_comment|
  json.extract! problem_comment, :id, :problem_id, :content
  json.url problem_comment_url(problem_comment, format: :json)
end
