class ChaptersController < ApplicationController
  def index
    @users = User.all
  end
end
