require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "sould get about" do
    get :about
    assert_response :success
  end
  
  test "sould get contact" do
    get :contact
    assert_response :success
end
