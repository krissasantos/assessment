class Restaurant
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods
  
  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    name: "TEXT",
    location: "TEXT",
    owner_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)  
  attr_reader :id

  def owner
    sql = <<-SQL
      SELECT owners.* FROM owners INNER JOIN restaurants WHERE
      restaurants.owner_id == owner.id
    SQL
    self.class.db.execute(sql, self.id)
  end
end