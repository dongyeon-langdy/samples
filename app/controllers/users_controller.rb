class UsersController < ApplicationController
  def index
    # render json: UserBlueprint.render(User.all, view: :normal)
    render json: UserSerializer.new(User.all, { include: [:posts] }).serializable_hash
  end
end
