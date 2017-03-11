require 'sqlite3'

# Open a database
db = SQLite3::Database.new "database.db"

#### Insert values

# db.execute(<<-SQL
#   INSERT INTO students 
#   (first_name, last_name, gender, birthday, email, phone) 
#   VALUES 
#   ('jane', 'smith', 'female', '1997-7-20', 'abc@hi.com', '123.321.2323');
# SQL
# )


# db.execute(<<-SQL
#   INSERT INTO students
#   (first_name, last_name, gender, birthday)
#   VALUES
#   ('jane', 'smith', 'female', '1997-7-20');
# SQL
# )

# db.execute(<<-SQL
#   INSERT INTO students
#   (gender, first_name, last_name)
#   VALUES
#   ('female', 'jane', 'smith')
# SQL
# )

#### Select Values

#query_select = db.execute("SELECT * FROM students")

#query_select = db.execute("SELECT * FROM students WHERE gender = 'female'")

#query_select = db.execute("SELECT * FROM students WHERE gender = 'male'")

#query_select = db.execute("SELECT * FROM students WHERE birthday LIKE '1994%'")

#query_select = db.execute("SELECT * FROM students WHERE last_name LIKE 'S%'")

#query_select = db.execute("SELECT * FROM students WHERE email LIKE '%biz' ORDER BY last_name, first_name")

#p query_select

# Update values
# db.execute(<<-SQL
#   UPDATE students
#   SET email = '123@abc.com'
#   WHERE id = 1
# SQL
# )

# db.execute(<<-SQL
#   UPDATE students
#   SET email = '123@abc.com'
#   WHERE email = 'agustina_braun@wintheiser.info'
# SQL
# )

# p db.execute(<<-SQL
#   UPDATE students
#   SET email = '123@abc.com'
#   WHERE last_name LIKE 'S%'
# SQL
# )

### Delete values
# p db.execute(<<-SQL
#   DELETE from students
#   WHERE id = 1
# SQL
# )

# p db.execute(<<-SQL
#   DELETE from students
#   WHERE email = '123@abc.com'
# SQL
# )

# p db.execute(<<-SQL
#   DELETE from students
#   WHERE 1 = 1
# SQL
# )






