json.array!(@correspondences) do |correspondence|
  json.extract! correspondence, :id, :subject, :triggers, :format, :office, :sample_message, :audience
  json.url correspondence_url(correspondence, format: :json)
end
