#!/usr/bin/env ruby

def match_pattern(str)
	regex = /School/
	match_result = str.match(regex)

	if match_result
		puts match_result[0]
	else
		puts "$"
	end
end

if ARGV.empty?
	puts "Usage: #{$PROGRAM_NAME} {STRING}"
	exit 1
end

match_pattern(ARGV[0])	
