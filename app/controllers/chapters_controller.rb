class ChaptersController < ApplicationController
  def index
    @users = User.paginate(:page =>params[:page], :per_page => 10)
  end

  def show
    @user = User.find(params[:id])
    get_chapter_total_points(@user)
  end

  def leaderboard
    @users = User.paginate(:page => params[:page], :per_page => 10)
  end

  def stats
    @actions = ChapterAction.all
    @categories = Category.all
  end

  private

  def get_chapter_total_points(user)
    @actions = ChapterAction.where("user_id = ?", user.id)
    puts @actions.to_s
  end

end
