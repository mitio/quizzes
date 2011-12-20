class QuestionsController < ApplicationController
  before_filter :load_quiz

  # GET /questions
  # GET /questions.json
  def index
    @questions = @quiz.questions

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @question = @quiz.questions.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    @question = @quiz.questions.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @question = @quiz.questions.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = @quiz.questions.build(params[:question])

    respond_to do |format|
      if @question.save
        format.html { redirect_to [@quiz, @question], notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = @quiz.questions.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to [@quiz, @question], notice: 'Question was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question = @quiz.questions.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to quiz_questions_url(@quiz) }
      format.json { head :ok }
    end
  end

  private

  def load_quiz
    @quiz = Quiz.find params[:quiz_id]
  end
end
