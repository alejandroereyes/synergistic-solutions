json.array!(@courses) do |course|
  json.extract! course, :id, :title, :start_date, :max_enrollment, :location_id
  json.url course_url(course, format: :json)
end
