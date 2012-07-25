class Day < ActiveRecord::Base
  attr_accessible :date, :weight, :fat

  def title
    self.date.strftime "%B #{ActiveSupport::Inflector.ordinalize(date.day)}, %Y"
  end
end
