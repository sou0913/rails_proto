class ProblemTypesController < ApplicationController
  def index
    render json: ["FindProblem", "ReplaceProblem"]
  end
end