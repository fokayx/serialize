class Item < ActiveRecord::Base
  #belongs_to :exam
  has_many :packages
  has_many :exams, through: :packages
end
