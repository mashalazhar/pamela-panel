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
        @cohort.update(cohort_params) # (course)
        redirect_to '/cohorts'
    end

    def new 
        @cohort = Cohort.new
    end

    def create 
        Cohort.create(cohort_params)
        redirect_to '/cohorts'
    end

    def destroy
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end

    private
    def cohort
      params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_id, :course_id)
    end
end 

