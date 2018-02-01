class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.new(stuent_params)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
