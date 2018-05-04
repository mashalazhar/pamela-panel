class StudentsController < ApplicationController
    def index
        puts "This is the Instructors Controller"
        @students = Student.all 
     end
 
     def show
        puts "This will show specific instructors"
        @current_student = Student.find(params[:id])
     end 
end
