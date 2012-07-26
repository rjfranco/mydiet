class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  before_save :prevent_unless_first

  private
  def prevent_unless_first
    unless User.all.empty?
      flash[:alert] = 'Sorry, only one user per installation instance right now.'
      return false
    end
  end

end
