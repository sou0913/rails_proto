class ProblemsController < ApplicationController
    # GET problems?page=1
    def index
      problems = Problem.preload(:matches, :no_matches).page(params[:page])
      total_rows = Problem.count
      render json: { 
        problems: ActiveModelSerializers::SerializableResource.new(problems).as_json,
        total_rows: total_rows
      }
    end

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

    private

    def problem_form_params
      params.require(:problem).permit(
        :id, :type, :title, :target, :statement, :senario, :afterReplaceAnswer, matches: [], noMatches: []
      )
    end
end
