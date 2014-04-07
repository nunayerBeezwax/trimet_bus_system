class Bus < ActiveRecord::Base
  belongs_to :line
  has_many :stops, through: :line
end
