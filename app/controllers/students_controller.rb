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
        @student.update(course_params)
        redirect_to '/students'
    end

    def new 
        @student = Student.new
    end

    def create 
        Student.create(student_params)
        redirect_to '/students'
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to '/students'
    end

    private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :start_date, :end_date, :instructor_id, :course_id)
    end
end
