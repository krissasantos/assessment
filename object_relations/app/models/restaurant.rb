class Restaurant
  attr_accessor :name#, :review
 
  @@all = []

  def initialize(name)
    @name = name
    @@reviews = []
    @@customers = []
    @@all << self
  end
  
  def self.all
    @@all
  end

  def reviews
    @@reviews 
  end

  def customers
    @@customers
  end

  def self.find_by_name(name)
    return Restaurant.all.select {|restaurant| restaurant.name == name}
  end
end


