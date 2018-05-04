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
        @course.update(course)
        redirect_to '/courses'
    end
end
