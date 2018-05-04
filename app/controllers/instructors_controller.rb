class InstructorsController < ApplicationController
    def index
       puts "This is the Instructors Controller"
       @instructors = Instructor.all 
    end

    def show
       puts "This will show specific instructors"
       @current_instructor = Instructor.find(params[:id])
    end 
end
