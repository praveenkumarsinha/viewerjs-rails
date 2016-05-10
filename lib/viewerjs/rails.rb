require "viewerjs/rails/version"
require "viewerjs/view_helpers"

module Viewerjs
  module Rails
    class Engine < ::Rails::Engine
    end

    class Railtie < ::Rails::Railtie
      #Adding pdf.worker.js to precompile set of assets otherwise developer(s)/user(s) are forced to append it in their
      #respective environment file
      #config.assets.precompile += %w( pdf.worker.js )

      initializer "viewerjs.view_helpers" do
        ActionView::Base.send :include, Viewerjs::ViewHelpers
      end
    end
  end
end
