class User < ActiveRecord::Base
  has_secure_password
  has_many :articles
  has_many :comments

  validates :user_name, presence: true,
                        length: { minimum: 5 },
                        uniqueness: true
  validates :avatar, presence: true 

end
