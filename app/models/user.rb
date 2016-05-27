class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # before_action :authenticate_user!
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         # ,
         # :authentication_keys => [:login]
  validate :validate_username
  attr_accessor :login

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(user_name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:user_name) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  def validate_username
  if User.where(email: user_name).exists?
    errors.add(:user_name, :invalid)
  end
end
end
