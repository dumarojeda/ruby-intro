require 'sqlite3'

### Open a database
db = SQLite3::Database.new "database.db"

### Create Table 'students'

# db.execute(<<-SQL
#   CREATE TABLE students (
#     id INTEGER PRIMARY KEY AUTOINCREMENT,
#     first_name VARCHAR(255),
#     last_name VARCHAR(255),
#     gender VARCHAR(255),
#     birthday DATE,
#     email VARCHAR(255),
#     phone VARCHAR(255)
#   );
#   SQL
# )

#### Insert values
students_array = [
  ["Nikolas", "Friesen", "female", Time.at(rand * Time.now.to_i).strftime("%F %T"), "agustina_braun@wintheiser.info", "449.897.7415"],
  ["Randi", "Halvorson", "male", Time.at(rand * Time.now.to_i).strftime("%F %T"), "heber.upton@bechtelarwisozk.biz", "(697)436-2633"],
  ["Sally", "Buckridge", "female", Time.at(rand * Time.now.to_i).strftime("%F %T"), "nora@treutel.name", "1-351-672-6358x02502"],
  ["Morris", "Swift", "male", Time.at(rand * Time.now.to_i).strftime("%F %T"), "cordell@sanfordkuhlman.org", "(600)142-5639x9380"],
  ["Sidney", "Ortiz", "male", Time.at(rand * Time.now.to_i).strftime("%F %T"), "erling@davis.name", "554.170.3265"],
  ["Reid", "Skiles", "male", Time.at(rand * Time.now.to_i).strftime("%F %T"), "mike_harvey@nikolaus.com", "(543)511-2123"],
  ["Violet", "Dickens", "female", Time.at(rand * Time.now.to_i).strftime("%F %T"), "rubye_olson@collins.biz", "1-410-486-1411x5058"],
  ["Marguerite", "Flatley", "female", Time.at(rand * Time.now.to_i).strftime("%F %T"), "wanda_okon@hane.name", "572.978.5828x07860"],
  ["Cary", "Schoen", "male", Time.at(rand * Time.now.to_i).strftime("%F %T"), "fay@runolfon.biz", "1-828-134-7828x66958"],
  ["Mazie", "Gibson", "female", Time.at(rand * Time.now.to_i).strftime("%F %T"), "doug@roberts.biz", "144.038.7351x24117"]
]

db.execute(<<-SQL
  INSERT INTO students (first_name, last_name, gender, birthday, email, phone) 
  VALUES (?, ?, ?, ?, ?, ?) students_array;
SQL
)


