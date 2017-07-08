# The program assemble a single set of records 
# by parsing data from 3 different file formats 
# and then display these records sorted in 3 different ways.
#
# Author::   Robert Van Sant (mailto:robert.vansant@gmail.com)
# Copyright:: Copyright (c) 2013

# gems and libraries
require 'rubygems'
require 'pp'
require 'date'
require './config'
require './classes/processfileinput'
require './classes/helpers/filewriterhelper'

# execute test
master_collection = []
# read data files based on type of data held in file (ie comma, pipe, and space delimited files)
Dir.glob(LOG_DIR_PATH).each { |file|
  # interface to implement
  input_type = file.split('/')[2].capitalize+'Delimited'
  # execute and implement strategy patterns
  ProcessFileInput.new(Object.const_get(input_type).new(file)).get_data_collection.each{|data|
    # create a master collection of data
    master_collection << data
  }
}
# apply sorting
sorted_collection = {
:sort_by_gender_last_name => master_collection.sort {|a, b| [a[:gender], a[:last_name]] <=> [b[:gender], b[:last_name]]},
:sort_by_birthdate_asc => master_collection.sort {|a, b| [a[:dob_year]] <=> [b[:dob_year]]},
:sort_by_last_name_desc => master_collection.sort {|a, b| [a[:last_name]] <=> [b[:last_name]]}.reverse
}

# output sorted data  
sorted_collection.each{|k,v| FileWriterHelper.write_file(k,v)}