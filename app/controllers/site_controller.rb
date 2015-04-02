class SiteController < ApplicationController
  # before_action :logged_in_redirect, only: :landing
  def landing
    reset_session
  end

  def about
  end
end
