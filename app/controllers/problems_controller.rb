class ProblemsController < ApplicationController
    # GET problems?page=1
    def index
      problems = Problem.page(params[:page]).select(:id, :title)
      total_rows = Problem.count
      render json: { 
        problems: problems,
        total_rows: total_rows
      }
    end
  
    # GET problems/1
    def show
      problem = Problem.find(params[:id])
      render json: problem
    end
end
