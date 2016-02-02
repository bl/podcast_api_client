module PodcastApiClient
  module V1
    class User
      include Her::JsonApi::Model
      uses_api PodcastApiClient::V1.api

      has_many :series
      has_many :podcasts
      has_many :articles
    end
  end
end
