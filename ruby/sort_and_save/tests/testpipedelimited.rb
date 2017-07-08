require 'test/unit'
require './classes/pipedelimited'

class TestPipeDelimited < Test::Unit::TestCase
    def test_parse
    	pipe = PipeDelimited.new('./data/pipe/pipe.txt')
    	expected = !pipe.data_collection.empty?
    	assert_equal expected, true
    end

    def test_read
    	pipe = PipeDelimited.new('./data/pipe/pipe.txt')
    	expected = !pipe.file_data.empty?
    	assert_equal expected, true
    end
end