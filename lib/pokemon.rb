class Pokemon
  attr_accessor :id, :name, :type, :db


  DB = {:conn => SQLite3::Database.new("db/pokemon.db")}

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)

    sql = <<-SQL
     INSERT INTO pokemon (name, type)
     VALUES (?, ?)
    SQL
    binding.pry

    DB[:conn].execute(sql, [name, type])
    @db = db
  end



  def self.find
  end

end
