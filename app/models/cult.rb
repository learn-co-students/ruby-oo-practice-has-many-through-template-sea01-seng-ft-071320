#class for Model1 goes here
#Feel free to change the name of the class
class Cult
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.save
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def bloodoaths
    BloodOath.all.select { |bloodoath| bloodoath.cult == self }
  end

  def followers
    bloodoaths.map { |bloodoath| bloodoath.follower }
  end
end
