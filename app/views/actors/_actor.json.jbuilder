json.extract! actor, :id, :name, :movie_id, :bio, :headshot, :dob, :created_at,
              :updated_at
json.url actor_url(actor, format: :json)
