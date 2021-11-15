json.extract! movie, :id, :title, :year, :description, :director_id, :image,
              :duration, :created_at, :updated_at
json.url movie_url(movie, format: :json)
