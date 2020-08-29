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

    def create
      problem = Problem.new(problem_params)
      if problem.save
        render :no_content
      else
        render status: 422
      end
    end
  
    # GET problems/1
    def show
      problem = Problem.find(params[:id])
      render json: problem
    end

    private

    def problem_params
      params.require(:problem).permit(
        :type, :title, :target, :statement, :senario, :after_replace_answer
      )
    end
end
