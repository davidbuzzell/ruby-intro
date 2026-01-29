# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 6-weather.rb
# EXERCISE
# Given the following Ruby hash that represents weather data,
# write a weather summary out to the screen. Something like this:
# Currently it is 67 degrees and Sunny.
# Forecast for the next 7 days:
# - 65 degrees and Mostly Cloudy
# - 70 degrees and Partly Cloudy
# - 62 degrees and Sunny
# - 68 degrees and Sunny
# - 65 degrees and Partly Cloudy with a 70% chance of rain
# - 72 degrees and Partly Cloudy
# - 60 degrees and Rainy
# Note: only display the chance of rain if above 50%.
# Note: do not display the chance of rain if conditions are already rainy.
weather_data = {
  current: {
    temperature: 67,
    conditions: "Sunny"
  },
  forecast: [
    { temperature: 65, conditions: "Mostly Cloudy", precipitation: 0.4 },
    { temperature: 70, conditions: "Partly Cloudy", precipitation: 0.2 },
    { temperature: 62, conditions: "Sunny", precipitation: 0.1 },
    { temperature: 68, conditions: "Sunny", precipitation: 0.1 },
    { temperature: 65, conditions: "Partly Cloudy", precipitation: 0.7 },
    { temperature: 72, conditions: "Partly Cloudy", precipitation: 0.4 },
    { temperature: 60, conditions: "Rainy", precipitation: 0.9 }
  ]
}

def display_weather(date_ind, temp, cond, precip)
    if date_ind == 0
        begin_str = "Currently, it is"
    elsif date_ind == 1
        begin_str = "Tomorrow, it will be"
    else
        begin_str = "In #{date_ind} days, it will be"
    end

    if precip > 0.5 && cond != "Rainy"
        rain_str = " with a #{(precip * 100).to_i}% chance of rain"
    else
        rain_str = ""
    end

    puts "#{begin_str} #{temp} degrees and #{cond}#{rain_str}"
end

display_weather(0,
                weather_data[:current][:temperature],
                weather_data[:current][:conditions],
                0.0)

weather_data[:forecast].each.with_index(1) do |forecast, ind|
    display_weather(ind,
                    forecast[:temperature],
                    forecast[:conditions],
                    forecast[:precipitation])
end
