class ExamsController < ApplicationController
  def index
    @exam = Exam.all
  end
  def new
    @exam = Exam.new
    @category = ["body", "blood", "heart", "brian"]
  end
  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to exams_path
    else
      render :new
    end
  end
  
  def show
    @exam = Exam.find(params[:id])
  end

  private
  def exam_params
    params.require(:exam).permit(:name, :category => [])
  end
end
