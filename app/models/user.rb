class User < ApplicationRecord
  has_secure_password
  has_many :activities
  has_and_belongs_to_many :interests

  def suggested_activities
    interests = self.interests
    activities = interests.map { |interest| interest.activities }.flatten
  end

end
