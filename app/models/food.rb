class Food < ActiveRecord::Base
  attr_accessible :name, :quantity
  belongs_to :meal
end
