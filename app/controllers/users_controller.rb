class UsersController < ApplicationController
  def index
    # render json: UserBlueprint.render(User.all, view: :normal)
    render json: UserBlueprint.render(User.all.order(id: :desc), view: :normal)
  end
end
