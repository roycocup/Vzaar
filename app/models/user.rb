class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true

  validates :email, presence: true, uniqueness: true
  # validates_email_format_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :password, presence: true

end
