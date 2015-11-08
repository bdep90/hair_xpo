class User < ActiveRecord::Base
  has_secure_password
  has_many :articles
  has_many :comments

  validates :user_name, presence: true,
                        length: { minimum: 5,
                                  maximum: 10
                        },
                        uniqueness: true
  validates :password, presence: true,
                        length: { minimum: 5,
                        }
  validates :password_confirmation, presence: true
  validates :avatar, presence: true

end
