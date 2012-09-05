require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)

  Bundler.require(*Rails.groups(:assets => %w(development test)))

end

module Mportal
  class Application < Rails::Application
    I18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = "zh-CN"


    config.encoding = "utf-8"

    config.filter_parameters += [:password]


    config.active_support.escape_html_entities_in_json = true


    config.active_record.whitelist_attributes = true


    config.assets.enabled = true

 
    config.assets.version = '1.0'
  end
end
