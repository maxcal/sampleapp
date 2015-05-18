class User < ActiveRecord::Base
  has_secure_password

  validate :current_password_is_correct,
           if: :validate_password?, on: :update

  def current_password_is_correct
    unless authenticate(current_password)
      errors.add(:current_password, "is incorrect.")
    end
  end

  def validate_password?
    !password.blank?
  end

  attr_accessor :current_password
end
