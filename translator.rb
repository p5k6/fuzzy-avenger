#!/usr/bin/env ruby
#

require 'rubygems'
require 'json'
require 'microsoft_translator'

client_secret = File.read(".secret").chomp
client_id = 'fuzzy_avenger'

class MicrosoftTranslator::Client
		def puts(*args)
		end
end

translator = MicrosoftTranslator::Client.new(client_id,client_secret)

def pick_random_line
		  chosen_line = nil
		    File.foreach("resources/samcompliments").each_with_index do |line, number|
					    chosen_line = line if rand < 1.0/(number+1)
						  end
			  return chosen_line.strip
end


def pick_random_language
		  chosen_line = nil
		    File.foreach("resources/languages2.csv").each_with_index do |line, number|
					    chosen_line = line if rand < 1.0/(number+1)
						  end
			  return chosen_line.strip
end


t = translator.translate(pick_random_line, "en",pick_random_language, "text/html")


puts t
