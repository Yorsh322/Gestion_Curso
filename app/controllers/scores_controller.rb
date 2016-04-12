class ScoresController < ApplicationController
  before_action :set_score, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # @scores = Score.all
    @scores = Score.where subject_id: current_teacher
    respond_with(@scores)
  end

  def show
    respond_with(@score)
  end

  def new
    @score = Score.new
    respond_with(@score)
  end

  def edit
  end

  def create
    @score = Score.new(score_params)
    @score.save
    respond_with(@score)
  end

  def update
    @score.update(score_params)
    respond_with(@score)
  end

  def destroy
    @score.destroy
    respond_with(@score)
  end

  private
    def set_score
      @score = Score.find(params[:id])
    end

    def score_params
      params.require(:score).permit(:score_one, :score_two, :score_three, :score_four, :score_test, :score_final, :subject_id, :student_id)
    end
end
