require 'test_helper'

#include PodcastApiClientTest

class UserTest < ActiveSupport::TestCase
  def setup
  end

  # INDEX (via .all)

#TODO: Implement proper stubbing for PodcastApiClient
#  test "should return all stored users" do
#    stub_api_for(PodcastApiClient::V1::User) do |stub|
#      stub.get("/users") { |env| [200, {}, [
#        {"id":"1","type":"users","attributes":{"name":"Deion Rowe","email":"user-0@example.com","created_at":"2016-01-15T02:33:51.855Z","updated_at":"2016-01-15T05:56:15.080Z"},"relationships":{"podcasts":{"data":[]}}},
#        {"id":"2","type":"users","attributes":{"name":"Rowena Hamill","email":"user-1@example.com","created_at":"2016-01-15T02:33:51.984Z","updated_at":"2016-01-15T02:33:51.984Z"},"relationships":{"podcasts":{"data":[]}}},
#        {"id":"3","type":"users","attributes":{"name":"Mrs. Michel Metz","email":"user-2@example.com","created_at":"2016-01-15T02:33:52.134Z","updated_at":"2016-01-15T02:33:52.134Z"},"relationships":{"podcasts":{"data":[]}}},
#        {"id":"4","type":"users","attributes":{"name":"Nathaniel Goldner","email":"user-3@example.com","created_at":"2016-01-15T02:33:52.284Z","updated_at":"2016-01-15T02:33:52.284Z"},"relationships":{"podcasts":{"data":[]}}},
#        {"id":"5","type":"users","attributes":{"name":"Roma O'Keefe","email":"user-4@example.com","created_at":"2016-01-15T02:33:52.427Z","updated_at":"2016-01-15T02:33:52.427Z"},"relationships":{"podcasts":{"data":[]}}}].to_json] 
#      }
#    end
#    assert_equal 10, PodcastApiClient::V1::User.all.count
#  end
 
   # SHOW (via .find())
 
#   def test_find_should_return_stored_user_by_user_id
#     stub_api_for(PodcastApiClient::V1::User) do |stub|
#       stub.get("/users/3") { |env| [200, {},
#         {"id":"3","type":"users","attributes":{"name":"Mrs. Michel Metz","email":"user-2@example.com","created_at":"2016-01-15T02:33:52.134Z","updated_at":"2016-01-15T02:33:52.134Z"},"relationships":{"podcasts":{"data":[]}}}.to_json]
#       }
#       stub.get("/users/4") { |env| [403, {},
#         [{status: 403, detail: "Invalid user"}].to_json] 
#       }
#     end
# 
#     assert_equal "user-2@example.com", PodcastApiClient::V1::User.find(3).email
#   end
 
   # CREATE (via .create())
   
#  def test_create_should_return_created_item_on_valid_create
#  end

end
