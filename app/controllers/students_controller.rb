class StudentsController < ApplicationController
    before_action :authenticate_admin!
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
        @student.update(student_params)
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
        x = Student.find(params[:id]).destroy
        puts "SMDNASKJDKSDJSDKSDSJDSD"
        puts x
        redirect_to '/students'
    end

    private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :age, :education, :cohort_id)
    end
end
