class ApplicationController < ActionController::Base
  before_action :set_local
end



def set_local
  I18n.locale = params[:lang] || locale_from_header || I18n.default_locale
end

def locale_from_header
  request.env.fetch('HTTP_ACCEPT_LANGUAGE', '').scan(/[a-z]{2}/).first
end


def configure_permitted_parameters
  devise_parameter_meribel.permit([:language])
end
