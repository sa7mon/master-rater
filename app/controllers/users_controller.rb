class UsersController < ApplicationController
  def update
  end

  def edit
  end

  def show
    @user = User.where(id: params[:id]).first
  end
end
