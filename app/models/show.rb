class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    where(rating: self.highest_rating).first
  end
end
