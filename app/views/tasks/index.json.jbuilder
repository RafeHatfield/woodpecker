json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :start_at, :active, :recurs_amount, :recurs_type, :tolerance_amount, :tolerance_type, :user_id
  json.url task_url(task, format: :json)
end
