class Meal < ActiveRecord::Base
  attr_accessible :optional, :order, :status, :type
  belongs_to :plan, :polymorphic => true
  has_many :foods
end
