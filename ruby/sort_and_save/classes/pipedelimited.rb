# The program assemble a single set of records 
# by parsing data from 3 different file formats 
# and then display these records sorted in 3 different ways.
#
# Author::   Robert Van Sant (mailto:robert.vansant@gmail.com)
# Copyright:: Copyright (c) 2013

require './classes/readfile'
# This PipeDelimited class extends from the base class ReadFile
# and implements it's custom parse method
class PipeDelimited < ReadFile
  # class constructor calling parent class to execute parent base methods
  def initialize(filename)
    super(filename)
  end

  # parse method - handles data read from pipe delimited file and created a data collection
  def parse
    @file_data.each {|line|
      h = {}
      data_elements = line.split('|').collect(&:strip)
      #LastName | FirstName | MiddleInitial | Gender | FavoriteColor | DateOfBirth
      @data_collection << {:last_name => data_elements[0], :first_name => data_elements[1], :middle_initial => data_elements[2], :gender => (data_elements[3] == 'M') ? 'Male' : 'Female', :favorite_color => data_elements[4], :dob => data_elements[5].gsub('-', '/'), :dob_year => data_elements[5][-4,4]}
    }
  end
end