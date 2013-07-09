class Movie < ActiveRecord::Base
  attr_accessible :name, :actors_to_add

  has_many :actors


  def actors_to_add=(actors)
    actors.each do |actor|
      self.actors.build(:name => actor)
    end
  end


end
