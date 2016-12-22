class Review

  attr_accessor :customer, :name, :restaurant

  @@reviews=[] 

  def initialize(name)
    @name = name
    @@reviews << self
  end

  def self.all
    @@reviews
  end
end



