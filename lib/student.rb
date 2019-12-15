class Student
  attr_accessor :name,:grade
  attr_reader :id
  def initialize(name,grade,id=nil)
    @id = id 
    @name = name 
    @grade = grade
  end
  
  def self.create_table
    sql = <<-SQL 
    CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name TEXT,
    grade INTEGER
    )
    SQL
    DB[:conn].execute(sql)
  end
  
<<<<<<< HEAD
  def self.drop_table
    sql = <<-SQL 
    DROP TABLE IF EXISTS students
=======
  def self.drop
    sql = <<-SQL 
    DROP TABLE students
>>>>>>> 2156898b50c47ea89b1084378de610742bfb7412
    SQL
    DB[:conn].execute(sql)
  end
  
<<<<<<< HEAD
  def save
    sql = <<-SQL
      INSERT INTO students (name, grade) 
      VALUES (?, ?)
    SQL
    
    DB[:conn].execute(sql, self.name, self.grade)
 
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end
  
  def self.create(hash) 
    student = Student.new(hash[:name], hash[:grade])
    student.save
    student
  end
=======
>>>>>>> 2156898b50c47ea89b1084378de610742bfb7412
  
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
end
