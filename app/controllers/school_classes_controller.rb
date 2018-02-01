class SchoolClassesController < ApplicationController
  def create
    @post = Post.create(params[:])
  end

  def new

  end

  private


    # We pass the permitted fields in as *args;
    # this keeps `post_params` pretty dry while
    # still allowing slightly different behavior
    # depending on the controller action
    def post_params(*args)
      params.require(:post).permit(*args)
    end
  end
end
