class MealPlan < ActiveRecord::Base
  attr_accessible :active
  has_many :meals
  before_save :turn_off_previous_active_plan


  def turn_off_previous_active_plan
    previous_plan = MealPlan.active
    previous_plan.active = false
    previous_plan.save!
  end

  # Creating a way to easily get the active plan
  def self.active
    first :conditions => {:active => true}
  end
end
