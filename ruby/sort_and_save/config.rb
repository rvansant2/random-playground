# The program assemble a single set of records 
# by parsing data from 3 different file formats 
# and then display these records sorted in 3 different ways.
#
# Author::   Robert Van Sant (mailto:robert.vansant@gmail.com)
# Copyright:: Copyright (c) 2013

# configurations
USE_ABSOLUTE_FILE_PATH = false
LOG_DIR_PATH = (USE_ABSOLUTE_FILE_PATH) ? File.dirname(__FILE__)+"/" : "./data/*/*.txt"