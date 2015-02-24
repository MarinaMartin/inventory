json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :name, :description, :audience, :eligibility_criteria, :determine_eligibility, :phone, :phone_number, :call_volume, :online, :url, :digital_volume, :in_person_ro, :in_person_mc, :by_mail, :mail_volume, :form, :details_url, :office, :resolution_time, :resolution_time_95th, :resolution_rate, :first_time_resolution_rate, :request_volume, :keywords, :search_on_va, :search_on_google, :man_hours
  json.url transaction_url(transaction, format: :json)
end
