#Customer has many reviews
#Customer has many reviews through restaurants

class Customer
  @@all = []
  attr_accessor :name, :restaurant, :review

  def initialize(name) 
    @name = name
    @@all << self
    @@reviews = []
    @@restaurants = []
  end


  def self.all
    @@all
  end

  def reviews
    @@reviews
  end

  def restaurants
    @@restaurants
  end


  def add_review(review, restaurant)
#     for customers, you should map through the reviews and then get each review's customer.
    @@restaurants << restaurant
    @@reviews << review

    restaurant.reviews << review
    review.restaurant = restaurant
    review.customer = self
  end

  def add_restaurant(restaurant)
    @restaurants << restaurant
  end

  def self.find_by_name(name)
    # self.find_by(name: name) #not working
    return Customer.all.select {|customer| customer.name == name }
  end

end


