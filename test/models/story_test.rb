require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  test 'valid story' do
    story = Story.new(author: 'ZZZ', story: 'Once upon a time, there was a hill. On the hill, there was a temple. In the temple, there was an old monk and a young monk. The old monk was telling the young monk a story...')
    assert story.valid?
  end

  test 'invalid without author' do
    story = Story.new(story: 'Once upon a time, there was a hill. On the hill, there was a temple. In the temple, there was an old monk and a young monk. The old monk was telling the young monk a story...')
    refute story.valid?, 'story is valid without an author'
    assert_not_nil story.errors[:author], 'no validation error for author'
  end

  test 'invalid without text' do
    story = Story.new(author: 'ZZZ') 
    refute story.valid?, 'story is valid without content'
    assert_not_nil story.errors[:story], 'no validation error for content'
  end
end
