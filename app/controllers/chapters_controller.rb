class ChaptersController < ApplicationController
  def index
    @users = User.paginate(:page =>params[:page], :per_page => 10)
  end

  def show
    @user = User.where("slug = '#{params[:slug]}'")[0]
    @actions = ChapterAction.where("user_id = #{@user.id}")
    @spendings = Spending.where("user_id = #{@user.id}")
    get_chapter_total_points(@user)
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
  end

  def leaderboard
    @users = User.paginate(:page => params[:page], :per_page => 10)
  end

  def stats
    @actions = ChapterAction.all
    @spendings = Spending.all
    @categories = Category.all
    @users = User.all
    @cb_points = 0
    @pc_points = 0
    @te_points = 0
    @hq_cb = 0
    @hq_pc = 0
    @hq_te = 0
    @hq = 0

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
    @users.each do |u|
      if u.is_hq_cb?
        @hq_cb +=1
      end
      if u.is_hq_pc?
        @hq_pc +=1
      end
      if u.is_hq_te?
        @hq_te +=1
      end
      if u.is_hq?
        @hq += 1
      end
    end
  end

  private

  def get_chapter_total_points(user)
    @actions = ChapterAction.where("user_id = ?", user.id)
    puts @actions.to_s
  end

end
