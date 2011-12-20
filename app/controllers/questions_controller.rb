class QuestionsController < ApplicationController
  before_filter :load_quiz

  # GET /questions
  def index
    @questions = @quiz.questions
  end

  # GET /questions/1
  def show
    @question = @quiz.questions.find(params[:id])
  end

  # GET /questions/new
  def new
    @question = @quiz.questions.build
  end

  # GET /questions/1/edit
  def edit
    @question = @quiz.questions.find(params[:id])
  end

  # POST /questions
  def create
    @question = @quiz.questions.build(params[:question])

    if @question.save
      redirect_to [@quiz, @question], notice: 'Question was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /questions/1
  def update
    @question = @quiz.questions.find(params[:id])

    if @question.update_attributes(params[:question])
      redirect_to [@quiz, @question], notice: 'Question was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /questions/1
  def destroy
    @question = @quiz.questions.find(params[:id])
    @question.destroy

    redirect_to quiz_questions_url(@quiz)
  end

  private

  def load_quiz
    @quiz = Quiz.find params[:quiz_id]
  end
end
