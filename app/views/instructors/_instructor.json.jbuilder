json.extract! instructor, :id, :last, :first, :middle, :email, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
