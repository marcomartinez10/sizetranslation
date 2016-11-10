class HomeController < ApplicationController

  def index
    @info = Info.create(brand: "", size: "")
  end
  #
  # def create
  #
  #   @info = @info(title: params[:title], content: params[:content], user_id: params[:user_id])
  #
  #   if @post.save
  #     # render json: @post
  #     render 'posts.json.jbuilder'
  #   else
  #     render json: @post.errors.full_messages
  #   end

  # end
  # private
  # def user_size_params
  # params.require(:info).permit(:brand, :size)
  # end

end
