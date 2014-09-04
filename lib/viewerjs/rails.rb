require "viewerjs/rails/version"
require "viewerjs/view_helpers"

module Viewerjs
  module Rails
    class Engine < ::Rails::Engine
    end

    class Railtie < ::Rails::Railtie
      initializer "viewerjs.view_helpers" do
        ActionView::Base.send :include, Viewerjs::ViewHelpers
      end
    end
  end
end
