class Interest < ApplicationRecord
  has_and_belongs_to_many :users :activity

end
