class Forecast < ApplicationRecord
  belongs_to :destination
  serialize :data, JSON

  def dark_sky
    self.data = DarkSky.forecast
  end 
end
