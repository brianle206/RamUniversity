class QuizController < ApplicationController
  def index
    @courses = Learn.all
  end

  def new 
    @quiz = Quiz.new
    3.times do 
      question = @quiz.questions.build
      4.times {question.answers.build}
    end
  end
  def create
    
  end

  def edit
   
  end

  def update
  end

  def destroy
  end

  def show
    @quiz = Quiz.find_by(course_id: params[:id])
    @questions = Question.where(quiz_id: get_quiz_id(@quiz))
  end

  private

  def get_quiz_id(quiz)

      @quiz_id = quiz.id

  end
end
