class CoursesController < ApplicationController
    def index
        puts "This is the Instructors Controller"
        @courses = Course.all 
     end

    def show
        puts "This will show specific instructors"
        @course = Course.find(params[:id])
    end 
    
    def edit 
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses'
    end

    def new 
        @course = course.new
    end

    def create 
        Course.create(course_params)
        redirect_to '/courses'
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/courses'
    end

    private
    def course_params
      params.require(:course).permit(:name, :total_hours)
    end
end
