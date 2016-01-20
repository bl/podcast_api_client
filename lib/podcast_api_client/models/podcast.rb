module PodcastApiClient
  module V1
    class Podcast
      include Her::JsonApi::Model
      uses_api PodcastApiClient::V1.api

      belongs_to :user

      has_many :timestamps
    end
  end
end
