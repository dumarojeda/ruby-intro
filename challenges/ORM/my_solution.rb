require 'sqlite3'

$db = SQLite3::Database.new("animal_shelter.db", results_as_hash: true)

# Create dogs table

# $db.execute(<<-SQL
#   CREATE TABLE dogs (
#   id INTEGER AUTO_INCREMENT PRIMARY KEY,
#   name VARCHAR(64),
#   age INTEGER,
#   weight INTEGER);
# SQL
# )

module ORM_Helper
  def self.symbolize_keys(hash)
    hash.keys.each do |key|
      hash[(key.to_sym rescue key) || key] = hash.delete(key)
    end
  end
end

class Dog
  include ORM_Helper
  
  def self.all
    $db.execute("SELECT * FROM dogs;").map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)
    end
  end

  def self.create(args)
    new_dog = [args[:name], args[:age], args[:weight]]
    query_dog = $db.execute('INSERT INTO dogs (name, age, weight) VALUES (?, ?, ?)', new_dog)
    args[:id] = $db.last_insert_row_id 
    dog = Dog.new(args)
  end

  def self.where(query, item)
    where = $db.execute("SELECT * FROM dogs WHERE #{query};", item)
    where.map do |dog_data|
      ORM_Helper.symbolize_keys(dog_data)
      Dog.new(dog_data)
    end
  end

  def self.find(id)
    dog_data = $db.execute("SELECT * FROM dogs WHERE id = #{id};")
    ORM_Helper.symbolize_keys(dog_data.first)
    Dog.new(dog_data.first)
  end

  attr_accessor :id, :name, :age, :weight

  def initialize(args)
    @id = args[:id]
    @name = args[:name]
    @age = args[:age]
    @weight = args[:weight]
  end
end





# Driver code ### Esto deberia funcionar

#p Dog.all
#p Dog.find(1)
#dog2 = Dog.find(2)
p ozu = Dog.create(name: 'oti', age: 6, weight: 14)
p Dog.where("name = ?", ozu.name)
