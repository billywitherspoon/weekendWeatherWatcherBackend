require 'rest-client'
require 'json'

class DarkSky
   def self.forecast(latitude, longitude)
      puts "https://api.darksky.net/forecast/#{$dark_sky_key}/#{latitude},#{longitude}"
      JSON.parse(RestClient.get("https://api.darksky.net/forecast/#{$dark_sky_key}/#{latitude},#{longitude}"))

   end
end
