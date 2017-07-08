# The program assemble a single set of records 
# by parsing data from 3 different file formats 
# and then display these records sorted in 3 different ways.
#
# Author::   Robert Van Sant (mailto:robert.vansant@gmail.com)
# Copyright:: Copyright (c) 2013

# This ReadFile class is an abstract class or base class
class ReadFile
  # Defined attributes for this module/class
  attr_accessor :file_name, :file_data, :data_collection

  # class constructor
  def initialize(filename)
    @file_name        = filename
    @file_data        = []
    @data_collection  = []
    self.read
    self.parse
  end

  # read method - that opens a file and read each line
  def read
    inputfile = File.open("#{@file_name}", 'r')
    inputfile.each_line do |line|
      @file_data << line.strip
    end
  end

  # abstract parse method
  def parse
    raise "Abstract parse method"
  end
end