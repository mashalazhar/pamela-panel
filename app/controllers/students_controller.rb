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

    def new 
        @student = Student.new
    end

    def create 
        student.create(student_params)
        redirect_to '/students'
    end

    def destroy
        student.find(params[:id]).destroy
        redirect_to '/students'
    end

    private
    def student
      params.require(:student).permit(:name, :start_date, :end_date, :instructor_id, :course_id)
    end
end
