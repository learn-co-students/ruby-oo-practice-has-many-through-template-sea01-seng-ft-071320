#class for Model3 goes here
#Feel free to change the name of the class
class Follower
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
    BloodOath.all.select { |bloodoath| bloodoath.follower == self }
  end

  def cults
    bloodoaths.map { |bloodoath| bloodoath.cult }.uniq
  end
end
