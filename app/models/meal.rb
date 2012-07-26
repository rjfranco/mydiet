class Meal < ActiveRecord::Base
  attr_accessible :optional, :order, :status, :type
end
