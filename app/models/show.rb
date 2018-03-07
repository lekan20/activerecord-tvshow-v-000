class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    where(rating: self.highest_rating).first
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show
    where(rating: self.lowest_rating).first
  end

  def self.ratings_sum
    binding.pry
    sum("rating")
  end

end
