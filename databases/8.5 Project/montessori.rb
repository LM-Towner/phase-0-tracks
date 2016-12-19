#random data populated for a montessori, users are not able to interact with the data. This will be a read only style of data. 
#They will be able to add students. I'm still working on the methods for updating and deleting students. 


#This is a work in progress.


#requiring my gems for the program
require 'sqlite3'
require 'faker'

#creating SQLite 3 database
db = SQLite3::Database.new("montessori.db")
#db.results_as_hash = true

create_table_classroom = <<-SQL
CREATE TABLE IF NOT EXISTS classroom(
id INTEGER PRIMARY KEY,
level INT
)
SQL

create_table_teacher = <<-SQL
CREATE TABLE IF NOT EXISTS teacher(
id INTEGER PRIMARY KEY,
first_name VARCHAR (255),
last_name VARCHAR (255)
)
SQL


create_table_student = <<-SQL
CREATE TABLE IF NOT EXISTS students(
id INTEGER PRIMARY KEY,
first_name VARCHAR (255),
last_name VARCHAR (255),
age INT,
address VARCHAR(255),
classroom_level INT,
teacher_id INT,
FOREIGN KEY (classroom_level) REFERENCES classroom(id)
FOREIGN KEY (teacher_id) REFERENCES teacher(id)
)
SQL


db.execute(create_table_classroom)
db.execute(create_table_teacher)
db.execute(create_table_student)




def create_classroom(db,level)
	db.execute("INSERT INTO classroom (level) VALUES (?)",[level])

end 

	3.times do 
		create_classroom(db,Faker::Number.between(1, 3))
	end


def create_teacher(db,first_name,last_name)
	db.execute("INSERT into teacher(first_name,last_name) VALUES (?,?)", [first_name,last_name])
end

	10.times do 
		create_teacher(db,Faker::Name.first_name, Faker::Name.last_name )
	end


def create_students(db,first_name,last_name,age,address,classroom_level,teacher_id)
	db.execute("INSERT into students(first_name,last_name,age,address,classroom_level,teacher_id) VALUES (?,?,?,?,?,?)",[first_name,last_name,age,address,classroom_level,teacher_id])
end


puts "You have a few choices, you may add a new student, update a current student or delete an existing student."

user_input = gets.chomp

puts "What would you like to do today? Enter the following words, new,update, delete"

user_input = gets.chomp

	if user_input == "new"
		puts "Please enter student's first name"
		first_name = gets.chomp
		puts "Please enter student's last name"
		last_name = gets.chomp
		puts "Please enter student's age"
		age = gets.to_i
		puts "Please enter student's address"
		address = gets.chomp
		puts "Please enter student's classroom_level, Number 1 to 3"
		classroom_level = gets.to_i
			while classroom_level < 1 || classroom_level > 3 
				puts "You've entered an invalid number"

				puts "Please enter student's classroom_level, Number 1 to 3"
				classroom_level = gets.to_i	
			end		
		puts "Please enter a teacher id number, 1-10"
			teacher_id = gets.to_i
			while  teacher_id  < 1 || teacher_id > 10
				puts "You've entered an invalid number"
				puts "Please enter a teacher id number, 1-10"
				teacher_id = gets.to_i
			end

			create_students(db,first_name,last_name,age,address,classroom_level,teacher_id)

			puts "Child was placed inside of the table"
	end			



=begin
50.times do 
	create_students(db,Faker::Name.first_name, Faker::Name.last_name,Faker::Number.between(3, 6), Faker::Address.street_address,Faker::Number.between(1, 3),Faker::Number.between(1, 10))
end
=end



