class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :name, presence: true,
                      length: { minimum: 5
                      }
  validates :img1, presence: true
  validates :img2, presence: true
  validates :img3, presence: true
  validates :cap1, presence: true
  validates :cap2, presence: true
  validates :cap3, presence: true
# vid validation - only of exists, create <div>
end
