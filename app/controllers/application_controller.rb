class ApplicationController < ActionController::Base
  # before_action :switch_locale

  # def set_locale
  #   I18n.locale = :cs
  # end

  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    #byebug
    I18n.with_locale(locale, &action)
  end

end
