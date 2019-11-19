class SurveyController < ApplicationController
    def index 
        @teachers = Teacher.all
    end 
    
    def new
    end 
    
    def create 
        @teacher = Teacher.new(teacher_params)
        
        @teacher.save
        redirect_to @teacher 
    end 
    
    def show
        @teacher = Teacher.find(params[:id])
    end 
    
end

private
    def teacher_params 
        params.require(:teacher).permit(:name, :year)
    end 
