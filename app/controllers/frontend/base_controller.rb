# -*- encoding : utf-8 -*-
class Frontend::BaseController < ApplicationController
  layout 'frontend'
  before_action :set_locale

  protected
    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def default_url_options options = {}
      { locale: I18n.locale }
    end
end