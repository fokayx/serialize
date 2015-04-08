class Exam < ActiveRecord::Base
  has_many :items, through: :packages
  has_many :packages

  serialize :category, Array

  before_validation do |model|
    model.category.reject!(&:blank?) if model.category
  end
  # delete multiple select array "" blank value
  # ["", "body", "heart"] --> ["body", "heart"]
end
