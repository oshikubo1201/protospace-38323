class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@prototypes = @user.prototypes.includes(:user)

    
    # @name = @user.name
    # @profile = @user.profile
    # @occupation = @user.occupation
    # @position = @user.position

  end
end
