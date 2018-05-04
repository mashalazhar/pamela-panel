class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all 
     end
 
     def show
        @cohort = Cohort.find(params[:id])
     end 

     def edit
        @cohort = Cohort.find(params[:id])
     end 

     def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(course)
        redirect_to '/cohorts'
    end
end
