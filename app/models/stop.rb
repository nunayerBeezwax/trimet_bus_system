class Stop < ActiveRecord::Base
  belongs_to :station
  belongs_to :line
  has_many :arrivals
end
