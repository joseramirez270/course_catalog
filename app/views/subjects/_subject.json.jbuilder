json.extract! subject, :id, :term, :name, :abbrev, :description, :created_at, :updated_at
json.url subject_url(subject, format: :json)
