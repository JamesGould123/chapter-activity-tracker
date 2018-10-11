class StaticPagesController < ApplicationController
before_action :authenticate_user!, only: [:control_panel]
  def faq
  end

  def store
  end

  def control_panel
  end
end
