class PodcastApiClient::V1::PodcastsController < ApplicationController
  def show
    @podcast = PodcastApiClient::V1::Podcast.find params[:id]
  end
end
