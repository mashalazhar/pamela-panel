class StudentsController < ApplicationController
    def index
        @students = Student.all 
     end
 
     def show
        @student = Student.find(params[:id])
     end 

     def edit
        @student = Student.find(params[:id])
     end 

     def update
        @student = Student.find(params[:id])
        @student.update(course)
        redirect_to '/students'
    end
end
