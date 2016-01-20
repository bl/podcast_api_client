module PodcastApiClient
  module V1
    class Article
      include Her::JsonApi::Model
      uses_api PodcastApiClient::V1.api

      belongs_to :author, class_name: 'User'
      belongs_to :timestamp
    end
  end
end
