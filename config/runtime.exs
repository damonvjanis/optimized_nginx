import Config

# Set port based on environment variables in the release
port = System.get_env("PORT")

if port do
  config :my_app, MyAppWeb.Endpoint, http: [port: String.to_integer(port)]
end
