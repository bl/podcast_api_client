require 'podcast_api_client'

# configure Podcast client API using host
# TODO: resolve lvh.me address to production server hosts routing alternative (allowing for subdomains)
PodcastApiClient::V1.configure("lvh.me:9292") do |c|
  # TODO: implement caching on client api calls using faraday-http-cache
  #c.use :http_cache, Rails.cache, logger: Rails.logger
end
