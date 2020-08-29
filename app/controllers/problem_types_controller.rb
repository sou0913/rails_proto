class ProblemTypesController < ApplicationController
  def index
    problem_types = Problem.pluck(:type).uniq
    render json: problem_types
  end
end