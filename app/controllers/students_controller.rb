class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
