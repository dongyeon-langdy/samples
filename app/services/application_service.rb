class ApplicationService
  class << self
    def call(*params)
      new.call(*params)
    end
  end
end
