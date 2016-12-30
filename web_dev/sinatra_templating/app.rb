# require gems 

require "sinatra"
require "sinatra/reloader" if development?
require 'sqlite3'

#add static resources
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

#show students on the home page 
get '/' do 
	@students = db.execute("SELECT * From students")
	# using the symbol '@' allows for it to be used in the template 
	erb :home
	#require the file by calling 'erb' symbol(:) and document name
end

#creating a new route for the homepage that links to the new student page
get '/students/new' do
	erb :new_student
end

#creating a route deleting a student
get '/students/delete' do 
	erb :delete
end



#creating a route for updating a student
get '/students/update' do 
	erb :update
end
#create a new route for the hompage that links to the update student page

#create new students via a form
post '/students' do 
	db.execute("INSERT INTO students(name, campus, age) VALUES (?,?,?)", 
		[params['name'], 
		params['campus'],
		 params['age'].to_i
		])
	#p params 
	redirect '/'
end

post '/delete' do
	db.execute("DELETE FROM students WHERE name = ?", 
		[params['name']])
	redirect '/'
end







