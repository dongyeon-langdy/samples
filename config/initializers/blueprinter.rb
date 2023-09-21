require 'oj' # you can skip this if OJ has already been required.

Blueprinter.configure do |config|
  config.generator = Oj # default is JSON
  config.field_default = nil
  config.association_default = {}
end
