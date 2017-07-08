Ruby Data Parsing/Aggregator
===================================
Copyright (c) 2013
Ruby version 1.9.3

Required
-----------------------------------
- Ruby version 1.9.3 (or higher but haven't tested higher than 2.0)

 Description
-----------------------------------
The program read data from multiple sources and assembles a single set of records by parsing data from 3 different data formats and then display these records sorted in 3 different ways, by definition.

How to run
-----------------------------------
1) First,`git clone` repo.
2) Then make sure that writable permissions are set to the sas directory by running the command `sudo chmod -R 777 sas`; this should ensure that the code can write the output files.
3) Go into the sas directory, by running the command `cd sas`.
4) Then you can execute the test by running the command `ruby process_input_data.rb`, you should see newly created files within the sas/output directory; each file name explains the sorting type applied to the output. You can delete the files, and rerun the command to verify the files are being created or do a `ls -al output/*.txt` and you should then see the timestamps on the files.
5) Included are some small unit tests in the sas/tests directory, which can be run by command `ruby tests/testspacedelimited.rb` or `ruby tests/testcommadelimited.rb` or `ruby tests/testpipedelimited.rb`.
