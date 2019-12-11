class ProfController < ApplicationController
  def index 
        @teachers = Teacher.search(params[:search])
        @profs = Prof.search(params[:search])
        @instructs = Instruct.search(params[:search])
  end 
    
  def new
        @teacher = Teacher.new
        @prof = Prof.new
        @instruct = Instruct.new
  end 
    
  def create 
        @teacher = Teacher.new(teacher_params)
        @prof = Prof.new(prof_params)
        @instruct = Instruct.new(prof_params)
        
        @teacher.save
        redirect_to @teacher 
        
        @prof.save
        redirect_to @prof 
        
        @instruct.save
        redirect_to @instruct 
  end 
    
  def show
        @teacher = Teacher.find(params[:id])
        @prof = Prof.find(params[:id])
        @instruct = Instruct.find(params[:id])
  end 
    
    
end

private
    def teacher_params 
        params.require(:teacher).permit(:name, :year, :search)
    end 
    
    def prof_params 
        params.require(:prof).permit(:name, :time, :search)
    end 
    
    def instruct_params 
        params.require(:instruct).permit(:name, :category, :credits, :style, :search)
    end 
