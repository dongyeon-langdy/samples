module User
  class Create < ApplicationService
    # 굳이 initialize를 써야할까?
    # Strong Parameter를 사용하여 call을 하자
    # def initialize(title:, description:, author_id:, genre_id:)
    #   @title = title
    #   @description = description
    #   @author_id = author_id
    #   @genre_id = genre_id
    # end

    def call(params)
      calc_method
      some_method
      ActiveRecord::Base.transaction do
        User.create!(params)
        Device::Create.call(params)
      end
    end

    private

    def calc_method
      # do something
    end

    def some_method
      # do something
    end
  end
end
