class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all 
     end
 
     def show
        @instructor = Instructor.find(params[:id])
     end 

     def edit
        @instructor = Instructor.find(params[:id])
     end 

     def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(course)
        redirect_to '/instructors'
    end
end
