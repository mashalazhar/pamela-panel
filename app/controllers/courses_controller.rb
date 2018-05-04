class CoursesController < ApplicationController
    def index
        puts "This is the Instructors Controller"
        @courses = Course.all 
     end
 
     def show
        puts "This will show specific instructors"
        @this_course = Course.find(params[:id])
     end 
end
