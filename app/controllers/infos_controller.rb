class InfosController < ApplicationController
  def new
    @info = Info.new(user_id: current_user.id)
  end

  def create
    @info = Info.new(brand:params[:info][:brand], size:params[:info][:size], user_id: current_user.id)
    if @info.save
      redirect_to new_info_path
    end
  end
end
