# The program assemble a single set of records 
# by parsing data from 3 different file formats 
# and then display these records sorted in 3 different ways.
#
# Author::   Robert Van Sant (mailto:robert.vansant@gmail.com)
# Copyright:: Copyright (c) 2013

class FileWriterHelper
	def self.write_file(file_name, collection)
	  output = ""
	  File.open("./output/#{file_name}.txt", 'w') do |f|
	    # last name, first name, gender, date of birth, favorite color
	    collection.each do |p|
	      output += "#{p[:last_name]}, #{p[:first_name]}, #{p[:gender]}, #{p[:dob]}, #{p[:favorite_color]}\n"
	    end
	    f.write(output)
	  end
	end
end