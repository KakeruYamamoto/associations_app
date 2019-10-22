require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module AssociationsApp
  class Application < Rails::Application
    config.load_defaults 5.2

    config.time_zone = 'Tokyo'  #タイムゾーンとはこのアプリケーションに設定される時間のことです
    config.active_record.default_timezone = :local#created_atなどのデータが保存される際、その時間を参考にして時間データが保存されます

  end
end
