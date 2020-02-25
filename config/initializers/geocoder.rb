Geocoder.configure(
  # [...]
  units: :km, # defaults to miles (:mi)
  lookup:    :google,
  api_key:   ENV['GOOGLE_API_SERVER_KEY'],
  use_https: true
  # [...]
)
