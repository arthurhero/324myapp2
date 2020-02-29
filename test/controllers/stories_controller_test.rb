require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
    test "should get stories" do
        get stories_url
        assert_response :success
        stories=assigns[:stories]
        stories.each do |story|
            assert_instance_of(Story,story)
        end
    end

end
