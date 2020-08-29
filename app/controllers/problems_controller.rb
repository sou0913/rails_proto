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

    # POST problems
    def create
      problem_form = ProblemForm.new(problem_form_params)
      if problem_form.save
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

    # DELETE problems/1
    def destroy
      problem = Problem.find(params[:id])
      if problem.destroy
        render :no_content
      else
        render status: 422
      end
    end

    private

    def problem_form_params
      params.require(:problem).permit(
        :id, :type, :title, :target, :statement, :senario, :afterReplaceAnswer, matches: [], noMatches: []
      )
    end
end
