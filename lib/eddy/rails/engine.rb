module Eddy
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Eddy::Rails
      config.generators.api_only = true
    end
  end
end
