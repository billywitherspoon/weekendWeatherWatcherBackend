class Destination < ApplicationRecord
  has_many :favorites
  has_many :forecasts
  has_many :favorite_tags, through: :favorites
  has_many :users, through: :favorites
  after_create :add_forecast

  def add_forecast
    forecast = Forecast.new 
    forecast.data = DarkSky.forecast(self.latitude, self.longitude)
    self.forecasts << forecast
    self.save
    forecast.save
  end

end
