#class for Model2 goes here
#Feel free to change the name of the class
class BloodOath
  attr_reader :cult, :follower

  @@all = []

  def initialize(cult, follower)
    @cult, @follower = cult, follower

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
