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
    @cb_points = 0
    @pc_points = 0
    @te_points = 0
    @actions.each do |action|
      case Category.find(action.category_id).bucket_id
      when 1
        @cb_points = @cb_points + action.points
      when 2
        @pc_points = @pc_points + action.points
      when 3
        @te_points = @pc_points + action.points
      end
    end
    @categories = Category.all
  end

  private

  def get_chapter_total_points(user)
    @actions = ChapterAction.where("user_id = ?", user.id)
    puts @actions.to_s
  end

end
