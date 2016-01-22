class StaticPagesController < ApplicationController
  def home
    @podcasts = PodcastApiClient::V1::Podcast.all
  end

  def about
  end

  def help
  end

  def contact
  end
end
