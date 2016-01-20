module PodcastApiClient
  module V1
    class Timestamp
      include Her::JsonApi::Model
      uses_api PodcastApiClient::V1.api

      belongs_to :podcast
      belongs_to :article
    end
  end
end
