class SchoolClassesController < ApplicationController
  def create
    @post = Post.create(params[:])
  end

  def new

  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
