class Meal < ActiveRecord::Base
  attr_accessible :optional, :order, :status, :type
  belongs_to :day
  has_many :foods
end
