#!/usr/bin/env ruby

def match_pattern(str)
	regex = /School/
	match_result = str.match(regex)

	if match_result
		puts match_result.to_s
	else
		puts "$"
	end
end

# checks for a command line argument.
if ARGV.empty?
	puts "Usage: #{$PROGRAM_NAME} {STRING}"
	exit 1
end

match_pattern(ARGV[0])	
