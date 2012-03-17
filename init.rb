require File.dirname(__FILE__) + '/lib/coffeeviews'

ActionView::Template.register_template_handler :coffee, ActionView::TemplateHandlers::Coffee

