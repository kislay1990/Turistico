class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_role
  has_many :roles, :through => :user_role

  after_create :default_role

  private
  def default_role
    self.roles << Role.where(:name => 'administrator').first
  end
end
