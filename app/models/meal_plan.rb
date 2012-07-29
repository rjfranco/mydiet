class MealPlan < ActiveRecord::Base
  attr_accessible :active

  # Attaching meals and allowing nested forms
  has_many :meals
  accepts_nested_attributes_for :meals, :reject_if => :all_blank, :allow_destroy => true
  
  # Returning errors related to active plan status.
  before_save :check_for_active_plan

  # Creating a way to easily get the active plan
  def self.active
    first :conditions => {:active => true}
  end

  private
  def check_for_active_plan
    if MealPlan.active.nil?
      if self.active == false
        flash[:alert] = 'You must have at least one active Meal Plan'
        return false
      end
    else
      if MealPlan.active != self && self.active == true
        oldplan = MealPlan.active
        oldplan.active = false
        oldplan.save
      end
    end
  end

end
