class Meal < ActiveRecord::Base
  attr_accessible :optional, :order, :status, :type
  belongs_to :menu, :polymorphic => true
  has_many :foods
end
