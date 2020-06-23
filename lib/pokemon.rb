class Pokemon
  attr_accessor :id, :name, :type, :db
<<<<<<< HEAD
  
=======

  DB = {:conn => SQLite3::Database.new("db/pokemon.db")}

>>>>>>> 73f9fd4bc974d4ca6b3d6e8b8cfc7685491c31b1
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
<<<<<<< HEAD
  
  def self.save(name, type, db)
    sql = <<-SQL
     INSERT INTO pokemon (name, type, db)
     VALUES (?, ?, ?)
    SQL
    
    DB[:conn].execute(sql, name, type, db)
  end
  
=======



  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type, db)
      VALUES ?, ?, ?;
    SQL

    DB[:conn].execute(sql, name, type, db)

  end

  def self.find

  end

>>>>>>> 73f9fd4bc974d4ca6b3d6e8b8cfc7685491c31b1
end
