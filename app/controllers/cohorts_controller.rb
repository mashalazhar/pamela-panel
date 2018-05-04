class CohortsController < ApplicationController
    def index
        puts "This is the Instructors Controller"
        @cohorts = Cohort.all 
     end
 
     def show
        puts "This will show specific instructors"
        @this_cohort = Cohort.find(params[:id])
     end 
end
