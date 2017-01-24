#! /usr/bin/env ruby

query = ARGV
pbdata = `pbpaste`

pattern = ""
replacement = ""

pattern = query[0]

if query.size > 1
	replacement = query[1]
else
	replacement = ""
end

result = pbdata.gsub(pattern, replacement)

`echo #{result} | pbcopy`
