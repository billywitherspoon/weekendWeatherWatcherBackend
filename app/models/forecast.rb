class Forecast < ApplicationRecord
  belongs_to :destination
  serialize :data, JSON
end
