ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # stub api for client resource model to use Her api tests
  def stub_api_for(model)
    PodcastApiClient::V1.configure "lvh.me:9292" do |c|
    end

    model.use_api PodcastApiClient::V1.api
  end

end
