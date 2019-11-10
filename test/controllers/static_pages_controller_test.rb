require 'test_helper'
# Rspec.configure do |config|
#  config.include Rails.application.routes.url_helpers
# end
class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
    end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"  
  end

  test "should get contacts" do
    get static_pages_contacts_url
    assert_response :success
    assert_select "title", "Contacts | #{@base_title}"  
  end

end
