class StaticPagesController < ApplicationController
  def home
    #record = PodcastApiClient::V1::User
    #call = :all
    #CallPodcastApiJob.perform_now record, call
    #@users = PodcastApiClient::V1::User.all
#    conn = Faraday.new(url: 'http://api.lvh.me:8080') do |faraday|
#      faraday.request :url_encoded
#      #faraday.response :logger
#      faraday.adapter Faraday.default_adapter
#    end
#
#    res = conn.get '/users'
    #@users = res.body
    #puts res.body
    @users = PodcastApiClient::V1::User.all
    #puts @users
  end

  def about
  end

  def help
  end

  def contact
  end
end
