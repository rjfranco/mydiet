class MealPlan < ActiveRecord::Base
  attr_accessible :active
  has_many :meals
  before_save :check_for_active_plan


  def check_for_active_plan
    if MealPlan.active.nil? && self.active == false
      flash[:alert] = 'You must have at least one active Meal Plan'
      return false
    end
    
    if MealPlan.active != self && self.active == true
      oldplan = MealPlan.active
      oldplan.active = false
      oldplan.save
    end
  end

  # Creating a way to easily get the active plan
  def self.active
    first :conditions => {:active => true}
  end

  # Manually defining the instance setter for active ...
  def active=(boolean)
    @active = boolean
  end

end
