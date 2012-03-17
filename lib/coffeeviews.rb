# Coffeeviews
require 'coffee-script'

module ActionView
  module TemplateHandlers
    class Coffee < TemplateHandler
      include Compilable

      def erb_handler
        @erb_handler ||= ActionView::Template.registered_template_handler(:erb)
      end

      def compile template
        compiled = erb_handler.call(template)
        if compiled.is_a?(String)
          source = compiled
        else
          source = compiled.source
        end
        "::CoffeeScript.compile(begin;#{source};end)"
      end
    end
  end
end
