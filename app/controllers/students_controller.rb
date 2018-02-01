class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.new()
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
