class Review 
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  def customer
    sql = <<-SQL
      SELECT * FROM customers INNER JOIN reviews WHERE 
      customers.id == reviews.customer_id
    SQL
    self.class.db.execute(sql,self.id)

  end

  def restaurant
    sql = <<-SQL
      SELECT * FROM restaurants INNER JOIN reviews WHERE
      restaurants.id == reviews.restaurant_id
    SQL
    self.class.db.execute(sql,self.id)
  end

end

