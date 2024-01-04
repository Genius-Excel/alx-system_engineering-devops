#!/usr/bin/env ruby

def match_pattern(text)
	regex = /h+b+tn/
	match_result = text.match(regex)

	if match_result
		puts "#{match_result[0]}"
	else
		puts "$"
	end
end

if ARGV.empty?
	puts "Usage: #{$PROGRAM_NAME} {STRING}"
	exit 1
end

match_pattern(ARGV[0])
