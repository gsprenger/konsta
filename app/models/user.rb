class User < ActiveRecord::Base
  validates :name, 
    presence:   true, 
    uniqueness: { case_sensitive: false },
    length:     { minimum: 6, maximum: 50 }, 
    format:     { with: /\A\w[\w\._-]+\w\z/i }

  validates :email, 
    presence:   true, 
    uniqueness: { case_sensitive: false },
    length:     { maximum: 150 },
    format:     { with: /\A\S+@\S+\.\S+\z/ }
  before_save { self.email = email.downcase }

  has_secure_password
  validates :password, 
    length: { minimum: 6 }


end
