class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy, :item]
  def index
    @exam = Exam.all
  end
  def new
    @exam = Exam.new
    @category = ["body", "blood", "heart", "brian"]
    @items = Item.all
  end
  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to exams_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update 
    if @exam.update(exam_params)
      redirect_to :exam, notice: 'OK'
    else
      render :edit, notice: 'Error'
    end
  end

  def show
  end

  def item
  end
  # 為新增項目所開的Action

  private
  def set_exam
    @exam = Exam.find(params[:id])
    @category = ["body", "blood", "heart", "brian"]
  end
  def exam_params
    params.require(:exam).permit(:name, :category => [], :item_ids => [])
  end
end
