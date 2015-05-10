class List < ActiveRecord::Base

  validates :title, presence: true
  validates_inclusion_of :private, in: [true, false]  
  belongs_to :user
  has_many :items
end
