module PodcastApiClient
  module V1
    class Series
      include Her::JsonApi::Model
      uses_api PodcastApiClient::V1.api

      belongs_to :user

      has_many :podcasts
    end
  end
end
