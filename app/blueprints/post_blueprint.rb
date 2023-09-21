class PostBlueprint < Blueprinter::Base
  identifier :id
  fields :title, :body, :created_at, :updated_at

  view :normal do
    association :likes, blueprint: LikeBlueprint
  end
end
