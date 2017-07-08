# The program assemble a single set of records 
# by parsing data from 3 different file formats 
# and then display these records sorted in 3 different ways.
#
# Author::   Robert Van Sant (mailto:robert.vansant@gmail.com)
# Copyright:: Copyright (c) 2013

require './classes/commadelimited'
require './classes/pipedelimited'
require './classes/spacedelimited'
# This ProcessFileInput class executes a strategy design pattern
# to handle file data with different parse methods
class ProcessFileInput
  def initialize strategy
    @parser = strategy
  end
 
  def parse
    @parser.parse
  end

  def get_data_collection
    return @parser.data_collection
  end

end