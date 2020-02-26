require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get about" do
    get welcome_about_url
    assert_response :success
  end

  test "should get random number" do
    get welcome_index_url
    ln=assigns[:lucky_num]
    assert_instance_of(Integer,ln)
    assert(ln>=0 && ln<10)
  end
end
