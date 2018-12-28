require 'will_paginate/array'
class ChaptersController < ApplicationController
  def index
    @users = User.where("permissions = 'chapter'").paginate(:page =>params[:page], :per_page => 10)
  end

  def show
    @user = User.where("slug = '#{params[:slug]}'")[0]
    @actions = ChapterAction.order("date_completed ASC").where("user_id = #{@user.id}")
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
        @te_points = @te_points + action.points
      end
    end
  end

  def leaderboard
    # Get a hash of the users which are chapters
    @users_hash = User.where("permissions = 'chapter'").as_json
    @leaderboard_hash = {}
    @users_hash.each do |user|
      @points = 0
      @actions = ChapterAction.where("user_id = #{user["id"]}")
      @actions.each do |action|
        @points = @points + action.points
      end
      @leaderboard_hash[user["name"]] = @points
    end

    @leaderboard_hash = @leaderboard_hash.sort_by { |name, points| points }
    @leaderboard_hash = @leaderboard_hash.reverse

    @users = @leaderboard_hash.paginate(:page =>params[:page], :per_page => 10)

  end

  def stats
    @actions = ChapterAction.all
    @spendings = Spending.where("rollover != 'true'")
    @categories = Category.all
    @users = User.all
    @cb_points = 0
    @pc_points = 0
    @te_points = 0
    @hq_cb = 0
    @hq_pc = 0
    @hq_te = 0
    @hq = 0
    # Initialize count at 0 for how many actions taken this week
    @weekly_actions_taken = 0

    @actions.each do |action|
      case Category.find(action.category_id).bucket_id
      when 1
        @cb_points = @cb_points + action.points
      when 2
        @pc_points = @pc_points + action.points
      when 3
        @te_points = @te_points + action.points
      end
    end

    @actions.each do |action|
      if action.date_completed => Date.today-6..Date.today
        @weekly_actions_taken += 1
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
