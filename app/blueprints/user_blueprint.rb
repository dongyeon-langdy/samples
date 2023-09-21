class UserBlueprint < Blueprinter::Base
  identifier :id

  fields :name

  view :normal do
    association :posts, blueprint: PostBlueprint, view: :normal
  end

  # view :normal do
  #   association :likes, blueprint: LikeBlueprint
  # end
end
