require 'yahoo_weatherman'

print "Please type your location > "

val = gets

def location(val)
	client = Weatherman::Client.new
	client.lookup_by_location("#{val}")
end

weather = location(val)

num = 0

day = 0

weather.forecasts.each do |check|

	day += num

	num += 1

	if day == 0
		day_name = "Today"
	elsif day == 1
		day_name = "Tomorrow"
	else
		day_name = check['date'].strftime('%A')
	end

	puts day_name + " is going to be " + check['text'].capitalize + " with a low of " + check['low'].to_s + " and a high of " + check['high'].to_s  + " degrees celsius."

end











# require 'yahoo_weatherman'
 
# def get_location(location)
#   client = Weatherman::Client.new
#   client.lookup_by_location(location)
# end
 
# weather = get_location('90210')
 
# puts today = Time.now.strftime('%w').to_i
 
# weather.forecasts.each do |forecast|
 
# puts day = forecast['date']
 
# puts weekday = day.strftime('%w').to_i
 
# if weekday == today
#    dayName = 'Today'
# elsif weekday == today + 1
#    dayName = 'Tomorrow'
# else
#    dayName = day.strftime('%A')
# end
 
# puts dayName + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s
 
# end