class Day < ActiveRecord::Base
  attr_accessible :date, :weight, :fat
  has_many :meals

  def title
    self.date.strftime "%B #{ActiveSupport::Inflector.ordinalize(date.day)}, %Y"
  end
end
