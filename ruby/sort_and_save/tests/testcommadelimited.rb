require 'test/unit'
require './classes/commadelimited'

class TestCommaDelimited < Test::Unit::TestCase
    def test_parse
    	comma = CommaDelimited.new('./data/comma/comma.txt')
    	expected = !comma.data_collection.empty?
    	assert_equal expected, true
    end

    def test_read
    	comma = CommaDelimited.new('./data/comma/comma.txt')
    	expected = !comma.file_data.empty?
    	assert_equal expected, true
    end
end