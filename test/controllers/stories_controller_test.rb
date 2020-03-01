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

    test "should create and destroy a story" do
        get stories_url
        stories=assigns[:stories]
        length=stories.length()
        post stories_url, params:{ "story":{"author":'ZZZ', "text": 'Once upon a time, there was a hill. On the hill, there was a temple. In the temple, there was an old monk and a young monk. The old monk was telling the young monk a story...' } }
        get stories_url
        stories=assigns[:stories]
        length2=stories.length()
        assert length2==length+1
        id=stories.last.id.to_s
        delete stories_url+'/'+id
        get stories_url
        stories=assigns[:stories]
        length3=stories.length()
        assert length3==length
    end
end
