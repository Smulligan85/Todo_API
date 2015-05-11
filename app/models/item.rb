class Item < ActiveRecord::Base
  belongs_to :list
  validates_inclusion_of :private, in: [true, false]  

end
