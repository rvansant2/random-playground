require 'test/unit'
require './classes/spacedelimited'

class TestSpaceDelimited < Test::Unit::TestCase
    def test_parse
    	space = SpaceDelimited.new('./data/space/space.txt')
    	expected = !space.data_collection.empty?
    	assert_equal expected, true
    end

    def test_read
    	space = SpaceDelimited.new('./data/space/space.txt')
    	expected = !space.file_data.empty?
    	assert_equal expected, true
    end
end